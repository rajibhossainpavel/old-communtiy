import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/model/enum/purchase_item_type.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/repository/points_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/user_status_state.dart';
import 'package:package_info_plus/package_info_plus.dart';

class UserStatusController extends StateNotifier<UserStatusState> {
  UserStatusController(
    this._uuid, {
    required UsersRepository usersRepository,
    required PointsRepositoryInterface pointsRepository,
  })  : _usersRepository = usersRepository,
        _pointsRepository = pointsRepository,
        super(const UserStatusState());

  final String _uuid;

  final PointsRepositoryInterface _pointsRepository;

  final UsersRepository _usersRepository;

  late StreamSubscription<dynamic> _connectionSubscription;

  Future<void> loadInitialData(BuildContext context) async {
    try {
      await Future.delayed(Duration.zero, () async {
        state = state.copyWith(isLoading: true);
        final res = await _usersRepository.fetchUserByUuid(_uuid);

        final user = res.user;
        final _subscriptionProducts = await _fetchProductsList();
        // productを降順でsortする。
        _subscriptionProducts.sort(
          (a, b) => b.rawPrice.compareTo(a.rawPrice),
        );
        await _prepareInAppPurchase(context);
        state = state.copyWith(
          isLoading: false,
          nickName: user.nickname,
          currentUserStatus: user.status,
          subscriptionProducts: _subscriptionProducts,
        );
      });
    } catch (e) {
      _handleError(context, e);
    }
  }

  Future<void> _prepareInAppPurchase(BuildContext context) async {
    final _purchaseUpdatedSubscription = InAppPurchase.instance.purchaseStream;
    _connectionSubscription = _purchaseUpdatedSubscription.listen(
      (purchaseDetailsList) async {
        await _listenToPurchaseUpdated(
          context,
          purchaseDetailsList: purchaseDetailsList,
        );
      },
      onDone: () {
        _connectionSubscription.cancel();
      },
      onError: (dynamic error) {
        debugPrint(
            'Encounter error while subscript streaming ${error.toString()}');
        // TODO(qkuronekop): handle error here.
      },
    );
  }

  Future<void> _listenToPurchaseUpdated(
    BuildContext context, {
    required List<PurchaseDetails> purchaseDetailsList,
  }) async {
    for (final purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        state = state.copyWith(isLoading: true);
        return;
      }
      if (purchaseDetails.status == PurchaseStatus.error) {
        showCancelPurchaseDialog(context);
        state = state.copyWith(isLoading: false);
      } else if (purchaseDetails.status == PurchaseStatus.purchased ||
          purchaseDetails.status == PurchaseStatus.restored) {
        // androidの時はpurchasedのみ続きの処理を実行する。
        // if (Platform.isAndroid &&
        //     purchaseDetails.status == PurchaseStatus.restored) {
        //   return;
        // }
        final updatedUserStatus = await _verifyPurchaseAndSendRequest(
          purchaseDetails,
        );
        state = state.copyWith(
          currentUserStatus: updatedUserStatus,
          isLoading: false,
        );
      }
      if (purchaseDetails.pendingCompletePurchase) {
        await InAppPurchase.instance.completePurchase(purchaseDetails);
      }
    }
  }

  Future<UserStatus> _verifyPurchaseAndSendRequest(
    PurchaseDetails purchaseDetails,
  ) async {
    try {
      final receipt = purchaseDetails.verificationData.localVerificationData;

      final updatedUserStatus = UserStatusExtension.fromProductID(
        purchaseDetails.productID,
      );
      if (defaultTargetPlatform == TargetPlatform.android) {
        await _pointsRepository.postSubscriptionPointOnPlayStore(
          datingState: purchaseDetails.productID,
          receipt: receipt,
          signature: (purchaseDetails as GooglePlayPurchaseDetails)
              .billingClientPurchase
              .signature,
        );
      } else {
        await _pointsRepository.postSubscriptionPointOnAppStore(
          datingState:
              UserStatusExtension.fromProductID(purchaseDetails.productID)
                  .toDatingState(),
          receipt: receipt,
          productId: purchaseDetails.productID,
        );
      }

      return updatedUserStatus;
    } catch (e) {
      state = state.copyWith(isLoading: false);
      // todo handle error
      return state.currentUserStatus;
    }
  }

  // 購入ボタンを押す
  Future<void> onTapPurchaseButton(
    BuildContext context, {
    required ProductDetails targetProductDetails,
  }) async {
    final transactions =
        Platform.isIOS ? await SKPaymentQueueWrapper().transactions() : null;
    log(transactions.toString());
    try {
      final available = await InAppPurchase.instance.isAvailable();
      if (!available) {
        throw Exception('purchase service is not avaiable');
      }
      final purchaseParam = PurchaseParam(
        productDetails: targetProductDetails,
      );
      final result = await InAppPurchase.instance.buyNonConsumable(
        purchaseParam: purchaseParam,
      );
      if (!result) {
        throw Exception();
      }
    } catch (e) {
      _handleError(context, e);
    } finally {
      await Future.wait(
        transactions?.map(
              (skPaymentTransactionWrapper) => SKPaymentQueueWrapper()
                  .finishTransaction(skPaymentTransactionWrapper),
            ) ??
            [],
      );
    }
  }

  // productのlistを返却する
  Future<List<ProductDetails>> _fetchProductsList() async {
    if (!(await InAppPurchase.instance.isAvailable())) {
      return [];
    }
    final productIds = await _getSubscribeProductIds();
    final res =
        await InAppPurchase.instance.queryProductDetails(productIds.toSet());
    return res.productDetails;
  }

  // 定期productのID一覧取得
  Future<List<String>> _getSubscribeProductIds() async {
    final res =
        await _pointsRepository.getPointsItems(PurchaseItemType.subscription);
    final info = await PackageInfo.fromPlatform();
    final _packageName = info.packageName;
    final prefix = Platform.isIOS ? '${_packageName}_' : '';
    return res.map((re) => '$prefix${re.productID}').toList();
  }

  void _handleError(BuildContext context, Object e) {
    debugPrint(e.toString());
    showErrorDialog(context, e);
    state = state.copyWith(isLoading: false);
  }

  @override
  void dispose() {
    _connectionSubscription.cancel();
    super.dispose();
  }
}

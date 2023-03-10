import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'package:oshiruco_app/application/dialog.dart';
//import 'package:oshiruco_app/provider/api_client_provider.dart';
import 'package:oshiruco_app/provider/my_page_controller_provider.dart';
import 'package:oshiruco_app/repository/points_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/point_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_point_exchange_confirm.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_point_shortage.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PointController extends StateNotifier<PointState> {
  PointController(
    this._uuid, {
    required UsersRepository usersRepository,
    required PointsRepository pointsRepository,
  })  : _usersRepository = usersRepository,
        _pointsRepository = pointsRepository,
        super(const PointState());

  final String _uuid;

  final UsersRepository _usersRepository;

  final PointsRepository _pointsRepository;

  late StreamSubscription<dynamic> _connectionSubscription;

  bool loading = false;

  Future<void> loadInitialData(BuildContext context) async {
    try {
      final res = await _usersRepository.fetchUserByUuid(_uuid);
      state = state.copyWith(
        points: res.user.points,
        likes: res.user.likes,
        name: res.user.nickname,
      );
      await _prepareInAppPurchase(context);
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
        _handleError(context, error.toString());
      },
    );
  }

  // 購入処理が更新された際に、listenして、購入の完了時の処理、失敗時の処理を行う。
  Future<void> _listenToPurchaseUpdated(
    BuildContext context, {
    required List<PurchaseDetails> purchaseDetailsList,
  }) async {
    try {
      for (final purchaseDetail in purchaseDetailsList) {
        if (purchaseDetail.status == PurchaseStatus.pending) {
          return;
        }
        if (purchaseDetail.status == PurchaseStatus.error) {
          await showCancelPurchaseDialog(context);
        }
        if (purchaseDetail.status == PurchaseStatus.purchased ||
            purchaseDetail.status == PurchaseStatus.restored) {
          // androidの時はpurchasedのみ購入時の処理を実行する。
          if (Platform.isAndroid &&
              purchaseDetail.status == PurchaseStatus.restored) {
            return;
          }
          final updatedPoint = await _verifyPurchaseAndSendRequest(
            purchaseDetail,
          );
          if (updatedPoint == -1) {
            return;
          }
          state = state.copyWith(
            points: updatedPoint,
            isLoading: false,
          );
        }
        if (purchaseDetail.pendingCompletePurchase) {
          await InAppPurchase.instance.completePurchase(purchaseDetail);
        }
      }
    } catch (e) {
      _handleError(context, e);
    } finally {
      if (loading) Navigator.pop(context);
      loading = false;
    }
  }

  Future<int> _verifyPurchaseAndSendRequest(
    PurchaseDetails purchaseDetails,
  ) async {
    log("_verifyPurchaseAndSendRequest called");
    const storage = FlutterSecureStorage();
    String? value = await storage.read(key: 'uuid');
    try {
      final receipt = purchaseDetails.verificationData.localVerificationData;
      var updatedPoint = 0;
      if (defaultTargetPlatform == TargetPlatform.android) {
        updatedPoint = await _pointsRepository.postBuyPointOnPlayStore(
          receipt: receipt,
          signature: (purchaseDetails as GooglePlayPurchaseDetails)
              .billingClientPurchase
              .signature,
        );
      } else {
        log("FIRST ELSE CALLED");
        //productID=split and size is greater than 1 then following
        log("PRODUCT ID :: ${purchaseDetails.productID}");
        String productIDLast =
            purchaseDetails.productID.split('_').last.toLowerCase();
        if (productIDLast == "premium" ||
            productIDLast == "basic" ||
            productIDLast == "light") {
          log("NESTED 2ND IF CALLED");
          updatedPoint = await _pointsRepository.getPoints(value!);
        } else {
          log("ELSE IS WORKING");
          updatedPoint = await _pointsRepository.postBuyPointOnAppStore(
            receipt: receipt,
            productId: purchaseDetails.productID.split('_').last,
          );
        }
      }
      return updatedPoint;
    } catch (e) {
      state = state.copyWith(isLoading: false);
      return -1;
    }
  }

  Future<List<String>> _getProductIDs() async {
    final info = await PackageInfo.fromPlatform();
    final _packageName = info.packageName;
    final prefix = Platform.isIOS ? '${_packageName}_' : '';

    // TODO(tamofplease): 以下をAPIからのresponseに書き換える。
    //final res =
    // await _pointsRepository.getPointsItems(PurchaseItemType.consume);
    // return res.map((re) => re.productID).toList();
    if (Platform.isIOS) {
      return <String>[
        '${prefix}8Point',
        '${prefix}18Point',
        '${prefix}60Point',
        '${prefix}104Point',
        '${prefix}250Point',
        '${prefix}620Point',
        '${prefix}1750Point'
      ];
    }
    return <String>[
      '${prefix}8points',
      '${prefix}18points',
      '${prefix}60points',
      '${prefix}104points',
      '${prefix}250points',
      '${prefix}620points',
    ];
  }

  Future<Map<String, ProductDetails>> fetchAmountProductsMapper() async {
    final productIds = await _getProductIDs();
    final response =
        await InAppPurchase.instance.queryProductDetails(productIds.toSet());
    final availableProducts = response.productDetails;
    return Map<String, ProductDetails>.fromIterables(
      availableProducts.map((p) => p.id).toList(),
      availableProducts,
    );
  }

  Future<void> onPressedPurchaseButton(BuildContext context,
      {required int points,
      required Map<String, ProductDetails> idProductMapper}) async {
    final transactions =
        Platform.isIOS ? (await SKPaymentQueueWrapper().transactions()) : null;
    try {
      Future.delayed(const Duration(milliseconds: 200), () {
        loading = true;
        preventDoubleTap(context);
      });
      final info = await PackageInfo.fromPlatform();
      final _packageName = info.packageName;
      final prefix = Platform.isIOS ? '${_packageName}_' : '';
      final id =
          Platform.isIOS ? '$prefix${points}Point' : '$prefix${points}points';
      final available = await InAppPurchase.instance.isAvailable();
      if (!available) {
        throw Exception('purchase service is not available');
      }
      final targetProduct = idProductMapper[id];
      if (targetProduct == null) {
        throw Exception('Could not find available product');
      }
      final purchaseParam = PurchaseParam(
        productDetails: targetProduct,
      );

      final result = await InAppPurchase.instance.buyConsumable(
        purchaseParam: purchaseParam,
      );
      if (!result) {
        throw Exception();
      }
    } catch (e) {
      Future.delayed(const Duration(milliseconds: 200), () {
        Navigator.pop(context);
        loading = false;
      });
      _handleError(context, e);
    } finally {
      transactions?.toList().forEach(
        (skPaymentTransactionWrapper) {
          SKPaymentQueueWrapper()
              .finishTransaction(skPaymentTransactionWrapper);
        },
      );
    }
  }

  // point交換
  Future<void> onPressedExchangeButton(BuildContext context,
      {required int points, required int greetings}) async {
    if (state.isLoading) {
      return;
    }
    try {
      if (points > state.points) {
        return dialogPointShortage(context);
      }

      final isConfirm = await showPointExchangeConfirmDialog(context,
              points: points, greetings: greetings) ??
          false;
      if (!isConfirm) {
        return;
      }

      final res = await _pointsRepository.putsPointsExchange(points, greetings);
      state = state.copyWith(
        points: res.remaining,
        likes: res.likes,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('交換しました。'),
        ),
      );
    } catch (e) {
      _handleError(context, e);
    }
  }

  void _handleError(BuildContext context, Object e) {
    debugPrint(e.toString());
    showErrorDialog(context, e);
    state = state.copyWith(isLoading: false);
    // todo handle error
  }

  @override
  void dispose() {
    _connectionSubscription.cancel();
    super.dispose();
  }
}

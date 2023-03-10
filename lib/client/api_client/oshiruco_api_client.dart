import "dart:io";

import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:oshiruco_app/client/api_client/api_client.dart";
import "package:oshiruco_app/model/enum/certificate.dart";
import "package:oshiruco_app/model/enum/diary_type.dart";
import "package:oshiruco_app/model/enum/user_key.dart";
import "package:oshiruco_app/model/http_helper_config/http_helper_config.dart";
import "package:oshiruco_app/model/response/application_init_response/application_init_response.dart";
import "package:oshiruco_app/model/response/association/block_response/get_association_block_response.dart";
import "package:oshiruco_app/model/response/association/favorite_response/get_association_favorite_response.dart";
import "package:oshiruco_app/model/response/association/like_to_user_response/like_to_user_response.dart";
import "package:oshiruco_app/model/response/association_history_response/association_history_response.dart";
import "package:oshiruco_app/model/response/communications/communication_users_response.dart";
import "package:oshiruco_app/model/response/communications/communications_response.dart";
import "package:oshiruco_app/model/response/diaries/create_response.dart";
import "package:oshiruco_app/model/response/diaries/find_all_response.dart";
import "package:oshiruco_app/model/response/diaries/find_by_type_response.dart";
import "package:oshiruco_app/model/response/diaries/find_by_uid_response.dart";
import "package:oshiruco_app/model/response/diaries/find_own_response.dart";
import "package:oshiruco_app/model/response/diaries/smile_response.dart";
import "package:oshiruco_app/model/response/group_find_response/group_find_response.dart";
import "package:oshiruco_app/model/response/groups/group_category_response.dart";
import "package:oshiruco_app/model/response/groups/group_create_response.dart";
import "package:oshiruco_app/model/response/groups/group_detail_response.dart";
import "package:oshiruco_app/model/response/groups/groups_find_response.dart";
import "package:oshiruco_app/model/response/next_point_response/next_point_response.dart";
import "package:oshiruco_app/model/response/notifications/notifications_response.dart";
import "package:oshiruco_app/model/response/point/get_points_item_response.dart";
import "package:oshiruco_app/model/response/points_transaction_response/points_transaction_response.dart";
import "package:oshiruco_app/model/response/selfhistory/self_history_response.dart";
import "package:oshiruco_app/model/response/settings/history_response.dart";
import "package:oshiruco_app/model/response/updated_points_response/updated_points_response.dart";
import "package:oshiruco_app/model/response/user_detail_response/user_detail_response.dart";
import "package:oshiruco_app/model/response/user_recommend/user_recommend_response.dart";
import "package:oshiruco_app/model/response/user_register_response/user_register_response.dart";
import "package:oshiruco_app/model/response/user_restore_response/user_restore_response.dart";
import "package:oshiruco_app/model/response/user_verify_response/user_verify_response.dart";
import "package:oshiruco_app/model/response/visit_history_response/visit_history_response.dart";
import "package:oshiruco_app/model/unread/unread.dart";
import "package:oshiruco_app/model/user_information/user_information.dart";
import "package:oshiruco_app/model/visit_history_user/visit_history_user.dart";

class OshirucoApiClient extends HttpHelper {
  factory OshirucoApiClient({
    required HttpHelperConfig config,
    required Dio http,
    required ProviderRef ref,
  }) {
    _client = OshirucoApiClient._internal(config: config, http: http, ref: ref);
    _config = config;

    final headers = <String, dynamic>{}..addAll(config.headers);
    _client.http.options = BaseOptions(
      baseUrl: config.baseUrl,
      connectTimeout: config.connectTimeout,
      receiveTimeout: config.receiveTimeout,
      sendTimeout: config.sendTimeout,
      headers: headers,
    );
    return _client;
  }

  OshirucoApiClient._internal({
    required HttpHelperConfig config,
    required Dio http,
    required ProviderRef ref,
  }) : super(
          config: config,
          http: http,
          ref: ref,
        );

  static late OshirucoApiClient _client;
  static late HttpHelperConfig _config;

  @override
  HttpHelperConfig get config => _config;

  Future<ApplicationInitResponse> applicationInitializeRequest({
    required String appVer,
    required String os,
    required String osVer,
    required String model,
    required String carrier,
    required String locale,
    required String uuid,
    required String uid,
  }) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/app/init",
      queryParameters: <String, dynamic>{
        "appVer": appVer,
        "os": os,
        "osVer": osVer,
        "model": model,
        "carrier": carrier,
        "locale": locale,
        "uuid": uuid,
        "uid": uid,
      },
    );
    final data = response.data;
    if (data == null) {
      // TODO(tamofplease): implement
      throw Exception();
    }
    return ApplicationInitResponse.fromJson(data);
  }

  Future<String> login(String email, String os, String appVersion,
      String osVersion, String model, String carrier, String local) async {
    final response = await _client.post<Map<String, dynamic>>(
      "/app/login",
      data: {
        "os": os,
        "appVer": appVersion,
        "osVer": osVersion,
        "model": model,
        "carrier": carrier,
        "locale": local,
        "account": email
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return data["token"] as String;
  }

  /// END app

  /// START association

  Future<AssociationLikeToUserResponse> associationLikeRequest(
    String targetUuid, {
    required String message,
    required String media,
    String where = "",
  }) async {
    final response = await _client.put<Map<String, dynamic>>(
      "/association/like",
      data: <String, dynamic>{
        // "where": "recommend",
        "media": media,
        "mediaPath": "",
        "message": message,
        "targetUUID": targetUuid,
        if (where.isNotEmpty) "where": where,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return AssociationLikeToUserResponse.fromJson(data);
  }

  Future<GetAssociationBlockResponse> getAssociationBlock() async {
    final response = await _client.get<Map<String, dynamic>>(
      "/association/block",
    );

    final data = response.data;
    if (data == null) {
      throw Exception();
    }

    return GetAssociationBlockResponse.fromJson(data);
  }

  Future<void> putBlockUserRequest(String targetUuid) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
          "/association/block",
          data: <String, dynamic>{
            "targetUUID": targetUuid,
          });
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> putFavoriteUserRequest(String targetUuid) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/association/favorite",
        data: <String, dynamic>{
          "targetUUID": targetUuid,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> deleteFavoriteUserRequest(String targetUuid) async {
    try {
      final response = await _client.delete<Map<String, dynamic>>(
        "/association/favorite",
        data: <String, dynamic>{
          "targetUUID": targetUuid,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<GetAssociationFavoriteResponse> getAssociationFavorite(
      int page) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/association/favorite",
      queryParameters: <String, dynamic>{
        "page": page,
      },
    );

    final data = response.data;
    if (data == null) {
      throw Exception();
    }

    return GetAssociationFavoriteResponse.fromJson(data);
  }

  Future<void> putViolationUserRequest(
    String targetUuid, {
    required String text,
  }) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
          "/association/violation",
          data: <String, dynamic>{
            "uuid": targetUuid,
            "text": text,
          });
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<AssociationHistoryResponse> getAssociationHistoryRequest({
    required int page,
  }) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/association/history",
      queryParameters: <String, dynamic>{
        "page": page,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    if ((data["histories"] as List<dynamic>).isEmpty) {
      data["histories"] = [
        {
          "logged": "logged",
          "created": "",
          "livePlace": "livePlace",
          "nickname": "nickname",
          "targetUserID": "targetUserID",
          "userIcon": "userIcon",
          "uuid": "uuid"
        },
        {
          "logged": "logged",
          "created": "",
          "livePlace": "livePlace",
          "nickname": "nickname",
          "targetUserID": "targetUserID",
          "userIcon": "userIcon",
          "uuid": "uuid"
        }
      ];
    }
    return AssociationHistoryResponse.fromJson(data);
  }

  /// END association

  /// START communication

  Future<CommunicationsResponse> matchingsRequest() async {
    final response = await _client.get<Map<String, dynamic>>("/communications");
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return CommunicationsResponse.fromJson(data);
  }

  Future<CommunicationUsersResponse> matchedUserRequest() async {
    final response =
        await _client.get<Map<String, dynamic>>("/communications/matched");
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return CommunicationUsersResponse.fromJson(data);
  }

  Future<CommunicationUsersResponse> fromLikedUserRequest(int page) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/communications/fromLiked",
      queryParameters: <String, dynamic>{
        "page": page,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return CommunicationUsersResponse.fromJson(data);
  }

  Future<CommunicationUsersResponse> toLikedUserRequest(int page) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/communications/toLiked",
      queryParameters: <String, dynamic>{
        "page": page,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return CommunicationUsersResponse.fromJson(data);
  }

  Future<bool> communicationMessageRequest(
    String targetID, {
    required String message,
  }) async {
    final response = await _client.post<Map<String, dynamic>>(
      "/communications/messages",
      data: <String, dynamic>{
        "targetID": targetID,
        "targetType": "user",
        "message": message,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return data["result"] == "success";
  }

  /// END communication

  /// START User

  Future<UserRestoreResponse> restore(String email) async {
    final response = await _client.put<Map<String, dynamic>>(
      "/user/restore",
      data: {
        "account": email,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return UserRestoreResponse.fromJson(data);
  }

  Future<UserRecommendResponse> userRecommendRequest() async {
    final response = await _client.get<Map<String, dynamic>>(
      "/user/recommend",
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return UserRecommendResponse.fromJson(data);
  }

  Future<UserRegisterResponse> usersRegisterRequest({
    required String birthPlace,
    required String code,
    required String gender,
    required String livePlace,
    required String nickname,
    required String fullName,
    required String account,
  }) async {
    final body = <String, dynamic>{
      "birthPlace": birthPlace,
      "code": code,
      "gender": gender,
      "livePlace": livePlace,
      "nickname": nickname,
      "fullName": fullName,
      "account": account,
    };
    final response = await _client.put<Map<String, dynamic>>(
      "/user/regist",
      data: body,
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    debugPrint(data.toString());
    return UserRegisterResponse.fromJson(data);
  }

  Future<UserVerifyResponse> userVerifyRequest({
    required Certificate certificate,
    required String uuid,
    required String uid,
  }) async {
    final response = await _client.put<Map<String, dynamic>>(
      "/user/verify",
      data: <String, dynamic>{
        "uuid": uuid,
        "uid": uid,
        "idType": certificate.toRequest,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
      // throw Exception();
    }
    return UserVerifyResponse.fromJson(data);
  }

  Future<List<UserInformation>> userSearchRequest({
    required String ageUpper,
    required String ageLower,
    required String gender,
    required String birthPlace,
    required String livePlace,
    required String hasPhoto,
    required int page,
  }) async {
    try {
      final query = <String, dynamic>{};
      if (ageUpper.isNotEmpty) {
        query["ageUpper"] = ageUpper;
      }
      if (ageUpper.isNotEmpty) {
        query["ageUpper"] = ageUpper;
      }
      if (ageLower.isNotEmpty) {
        query["ageLower"] = ageLower;
      }
      if (gender.isNotEmpty) {
        query["gender"] = gender;
      }
      if (birthPlace.isNotEmpty) {
        query["birthPlace"] = birthPlace;
      }
      if (livePlace.isNotEmpty) {
        query["livePlace"] = livePlace;
      }
      if (hasPhoto.isNotEmpty) {
        query["hasPhoto"] = hasPhoto;
      }
      query["page"] = page;

      final response = await _client.get<Map<String, dynamic>>(
        "/search",
        queryParameters: query,
      );
      final data = response.data;
      if (data == null) {
        // TODO(tamofplease): implement
        throw Exception();
      }
      if (data["users"] != null) {
        return UserInformationList.fromJson(data["users"] as List<dynamic>);
      } else {
        return [];
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<bool> userUpdate({
    required UserKey userKey,
    required String value,
  }) async {
    final response = await _client.put<Map<String, dynamic>>(
      "/user/profile",
      data: <String, dynamic>{
        "key": enumToString(userKey),
        "value": value,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return Future.value(true);
  }

  /// END User
  /// START Users

  Future<UserDetailResponse> fetchUserDetailRequest(String uuid) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/users/$uuid",
    );
    final data = response.data;
    if (data == null) {
      throw Exception;
    }
    return UserDetailResponse.fromJson(data);
  }

  /// END Users

  /// Start Diaries Requests
  Future<DiariesFindByUidResponse> diariesFindByUuidRequest(
    String uuid, {
    String lastId = "",
  }) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/diaries/findByUser/$uuid",
      queryParameters: <String, dynamic>{
        "lastID": lastId,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return DiariesFindByUidResponse.fromJson(data);
  }

  Future<DiariesFindAllResponse> diariesFindAllRequest() async {
    final response = await _client.get<Map<String, dynamic>>(
      "/diaries/findAll",
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return DiariesFindAllResponse.fromJson(data);
  }

  Future<DiariesFindByTypeResponse> diariesFindByTypeRequest(
    String diaryType, {
    String lastId = "",
  }) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/diaries/findByType/$diaryType",
      queryParameters: <String, dynamic>{
        "lastID": lastId,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return DiariesFindByTypeResponse.fromJson(data);
  }

  Future<DiariesFindByTypeResponse> diariesFindMatchedRequest({
    String lastId = "",
  }) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/diaries/findMatched",
      queryParameters: <String, dynamic>{
        "lastID": lastId,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return DiariesFindByTypeResponse.fromJson(data);
  }

  Future<DiariesFindOwnResponse> diariesFindOwnRequest() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/diaries/findOwn",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return DiariesFindOwnResponse.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  Future<DiariesSmileResponse> diariesSmileRequest(String diaryId,
      {required String diaryUserId}) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        "/diaries/smile",
        data: <String, String>{
          "diaryUserId": diaryUserId,
          "diaryId": diaryId,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return DiariesSmileResponse.fromJson(data);
    } catch (_) {
      throw Exception();
    }
  }

  Future<DiariesCreateResponse> diariesCreate(
      String text, String media, DiaryType type, bool matched) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        "/diaries",
        data: <String, dynamic>{
          "text": text,
          "media": media,
          "type": enumToString(type),
          "matched": matched,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return DiariesCreateResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> markAsReadDiaryComment(String diaryId) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/diaries/comments/$diaryId",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<DiariesCreateResponse> postDiaryComment(
      String text, String diaryId, String diaryUserUUID) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
          "/diaries/comments",
          data: <String, dynamic>{
            "text": text,
            "diaryID": diaryId,
            "diaryUserUUID": diaryUserUUID
          });
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return DiariesCreateResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  /// END Diaries Requests

  /// START Points Requests
  Future<UpdatedPointsResponse> putsPointsExchangeRequest(
      int points, int greetings) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        "/points/exchange",
        data: <String, dynamic>{"n": points, "m": greetings},
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return UpdatedPointsResponse.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  Future<bool> checkPoints(String kind, int amount) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/points/check",
      queryParameters: <String, dynamic>{
        "kind": kind,
        "amount": amount,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return data["ok"] == true;
  }

  Future<void> usePoints(String kind, int amount) async {
    final response = await _client.put<Map<String, dynamic>>(
      "/points/use",
      data: <String, dynamic>{
        "kind": kind,
        "amount": amount,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception;
    }
  }

  Future<GetPointsItemResponse> getPointsItemRequest(String type) async {
    final response = await _client.get<Map<String, dynamic>>(
      "/points/products",
      queryParameters: <String, dynamic>{
        "productType": type,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception;
    }
    return GetPointsItemResponse.fromJson(data);
  }

  Future<void> postPointsEvent(String eventId) async {
    final response = await _client.post<Map<String, dynamic>>(
      "/points/event",
      data: <String, dynamic>{
        "eventID": eventId,
      },
    );
    final data = response.data;
    if (data == null) {
      throw Exception;
    }
  }

  Future<int> postBuyPointOnAppStoreRequest({
    required String receipt,
    required String productId,
  }) async {
    final response = await _client.post<Map<String, dynamic>>(
      "/points/appstore/buy",
      data: <String, dynamic>{
        "productID": productId,
        "receipt": receipt,
      },
    );
    if (response.data == null) {
      throw Exception();
    }
    final point = response.data?["point"] as int?;
    if (point == null) {
      throw Exception;
    }
    return point;
  }

  Future<int> postBuyPointOnPlayStoreRequest({
    required String receipt,
    required String signature,
  }) async {
    final response = await _client.post<Map<String, dynamic>>(
      "/points/playstore/buy",
      data: <String, dynamic>{
        "receipt": receipt,
        "signature": signature,
      },
    );
    if (response.data == null) {
      throw Exception();
    }
    final remaining = response.data?["remaining"] as int?;
    if (remaining == null) {
      throw Exception;
    }
    return remaining;
  }

  Future<int> postSubscriptionPointOnAppStoreRequest({
    required String receipt,
    required String productId,
    required String datingState,
  }) async {
    final response = await _client.post<Map<String, dynamic>>(
      "/points/appstore/subscription",
      data: <String, dynamic>{
        "receipt": receipt,
        "product_id": productId,
        "dating_state": datingState,
      },
    );
    if (response.data == null) {
      throw Exception();
    }
    final point = response.data?["point"] as int?;
    if (point == null) {
      throw Exception;
    }
    return point;
  }

  Future<int> postSubscriptionPointOnPlayStoreRequest({
    required String receipt,
    required String signature,
    required String datingState,
  }) async {
    final response = await _client.post<Map<String, dynamic>>(
      "/points/playstore/subscription",
      data: <String, dynamic>{
        "receipt": receipt,
        "signature": signature,
        "datingState": datingState,
      },
    );
    if (response.data == null) {
      throw Exception();
    }
    final remaining = response.data?["remaining"] as int?;
    if (remaining == null) {
      throw Exception;
    }
    return remaining;
  }

  Future<PointsTransactionResponse> getPointsTransaction({
    required int page,
  }) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/points/transaction",
        queryParameters: <String, dynamic>{
          "page": page,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return PointsTransactionResponse.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

// TODO
  Future<int> getPoints({required String userId}) async {
    try {
      // final response = await _client.get<Map<String, dynamic>>(
      //   "/points"
      // );

      // var dio = Dio();

      var postData = {"user_id": userId};

      var response = await Dio().post<dynamic>("/points", data: postData);

      debugPrint("getPoints" + response.data.toString());

      final int data = response.data as int;
      if (data == null) {
        throw Exception();
      }
      return data;
    } catch (_) {
      rethrow;
    }
  }

  /// END Points Requests

  /// START selfhistory
  Future<SelfHistoryResponse> ownSelfHistoryRequest({
    required int age,
    required String status,
  }) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/selfhistory",
        queryParameters: <String, dynamic>{
          "age": age,
          "status": status,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return SelfHistoryResponse.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  Future<SelfHistoryResponse> selfHistoryRequest({
    required String targetUUID,
    required int age,
    required String status,
  }) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/selfhistory",
        queryParameters: <String, dynamic>{
          "targetUUID": targetUUID,
          "age": age,
          "status": status,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return SelfHistoryResponse.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  Future<void> putSelfHistoryImageRequest({
    required int generation,
    required int index,
    required String key,
    required String type,
    required String value,
  }) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/selfhistory",
        data: <String, dynamic>{
          "generation": generation,
          "key": key,
          "value": {
            "index": index,
            "type": type,
            "value": value,
          }
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<void> putSelfHistoryRequest({
    required int generation,
    required String key,
    required String value,
  }) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/selfhistory",
        data: <String, dynamic>{
          "generation": generation,
          "value": value,
          "key": key,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<void> deleteSelfHistoryImageRequest({
    required int generation,
    required int index,
    required String key,
  }) async {
    try {
      final response = await _client.delete<Map<String, dynamic>>(
        "/selfhistory",
        data: <String, dynamic>{
          "generation": generation,
          "key": key,
          "index": index,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<void> putSelfHistoryStatusRequest(
    String id, {
    required String status,
  }) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/selfhistory/status",
        data: <String, dynamic>{
          "id": id,
          "status": status,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<void> publishSelfHistoryRequest() async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/selfhistory/publish",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (_) {
      rethrow;
    }
  }

  /// END selfhistory

  /// START network
  Future<NextPointResponse> getNextPointsRequest() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/network/nextpoint",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return NextPointResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  /// END network

  /// START group
  Future<GroupCreateResponse> groupCreateRequest({
    required String intro,
    required String name,
    required String icon,
    required String categoryId,
  }) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        "/groups",
        data: <String, String>{
          "intro": intro,
          "name": name,
          "icon": icon,
          "categoryID": categoryId,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return GroupCreateResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> groupUpdateRequest({
    required String groupId,
    required String intro,
    required String name,
    required String icon,
    required String categoryId,
  }) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/groups",
        data: <String, String>{
          "groupID": groupId,
          "intro": intro,
          "name": name,
          "icon": icon,
          "categoryID": categoryId,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<GroupsCategoryResponse> groupsCategoriesRequest() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/groups/categories",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return GroupsCategoryResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<GroupFindResponse> groupFindRequest() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/groups/find",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return GroupFindResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<GroupsFindResponse> groupsFindByUuidRequest(
    String uuid,
  ) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/groups/joined/$uuid",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return GroupsFindResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<GroupsFindResponse> groupsFindByCategoryRequest(String categoryId,
      {int page = 1}) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/groups/categoryID/$categoryId/$page",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return GroupsFindResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<GroupDetailResponse> groupsFindRequest(String groupId) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/groups/$groupId",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return GroupDetailResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> joinGroupRequest(String groupId) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/groups/join/$groupId",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> leaveGroupRequest(String groupId) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/groups/leave/$groupId",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> messageSendRequest(
    String groupId, {
    required String message,
  }) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
          "/groups/message/sent",
          data: <String, dynamic>{
            "groupID": groupId,
            "message": message,
          });
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> groupChatReadRequest(String groupId) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/groups/message/read",
        data: <String, dynamic>{
          "groupID": groupId,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  /// END group

  /// START visitHistory

  Future<VisitHistoryUserList> getVisitHistoryUsers() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/visithistory",
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return VisitHistoryUserList.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> addVisitHistory(
    String target,
  ) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/visithistory",
        data: <String, dynamic>{
          "target": target,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  /// END visitHisotry

  /// START search
  Future<VisitHistoryResponse> searchUserVisitHistoryRequest(
    String uuids,
  ) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        "/search/users/visit_history",
        queryParameters: <String, dynamic>{
          "uuids": uuids,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return VisitHistoryResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  /// END search

  /// START settings
  Future<SettingsHistoryResponse> updateVisitHistory(
    String value,
  ) async {
    // value is "on" or "off"
    try {
      final response = await _client.put<Map<String, dynamic>>(
        "/user/settings/history",
        data: <String, dynamic>{
          "value": value,
        },
      );
      final data = response.data;
      if (data == null) {
        throw Exception();
      }
      return SettingsHistoryResponse.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  /// END settings

  /// START unread

  Future<Unread> getUnread() async {
    final response = await _client.get<Map<String, dynamic>>(
      "/unread",
    );

    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return Unread.fromJson(data);
  }

  Future<void> markAsRead(String action) async {
    final response = await _client.delete<Map<String, dynamic>>(
      "/unread",
      data: {"action": action},
    );

    final data = response.data;
    if (data == null) {
      throw Exception();
    }
  }

  /// END unread

  /// START fileupload

  Future<bool> uploadIdFile({
    required String fileName,
    required File file,
  }) async {
    return await _uploadFile(
      fileType: "id",
      formName: "img",
      fileName: fileName,
      file: file,
    );
  }

  Future<bool> uploadUserFile({
    required String fileName,
    required File file,
  }) async {
    return await _uploadFile(
      fileType: "user",
      formName: "img",
      fileName: fileName,
      file: file,
    );
  }

  Future<bool> uploadGroupFile({
    required String fileName,
    required File file,
  }) async {
    return await _uploadFile(
      fileType: "group",
      formName: "img",
      fileName: fileName,
      file: file,
    );
  }

  Future<bool> uploadMovieFile({
    required String fileName,
    required File file,
  }) async {
    return await _uploadFile(
      fileType: "movie",
      formName: "movie",
      fileName: fileName,
      file: file,
    );
  }

  Future<bool> _uploadFile({
    required String fileType,
    required String formName,
    required String fileName,
    required File file,
  }) async {
    final formData = FormData.fromMap(<String, dynamic>{
      formName: MultipartFile.fromFileSync(file.path, filename: fileName),
    });

    final response = await _client.post<Map<String, dynamic>>(
      "/files/upload/$fileType",
      data: formData,
    );

    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return data["result"] == "success";
  }

  /// END fileupload

  /// START notificatinos
  Future<bool> sendNotification(String conciergeId, String message) async {
    final response = await _client.put<Map<String, dynamic>>(
      "/unread",
      data: <String, dynamic>{
        "targetType": "expert",
        "targetID": conciergeId,
        "message": message,
      },
    );

    final data = response.data;
    if (data == null) {
      throw Exception();
    }
    return NotificationsResponse.fromJson(data).result == "success";
  }

  /// END search
  Future<void> registerFcmToken(String token) async {
    final response = await _client.post<Map<String, dynamic>>(
      "/notice/token",
      data: <String, dynamic>{
        "token": token,
      },
    );

    final data = response.data;
    if (data == null) {
      throw Exception();
    }
  }
}

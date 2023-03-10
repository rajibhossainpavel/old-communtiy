import 'package:flutter/material.dart';
import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/enum/certificate.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/enum/prefecture.dart';
import 'package:oshiruco_app/model/enum/user_key.dart';
import 'package:oshiruco_app/model/response/user_register_response/user_register_response.dart';
import 'package:oshiruco_app/model/response/user_restore_response/user_restore_response.dart';
import 'package:oshiruco_app/model/response/user_verify_response/user_verify_response.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/state/basic_information_state.dart';

abstract class UserRepositoryInterface {
  /// おすすめuser一覧
  Future<List<User>> userRecommend();

  Future<void> registerFcmToken(String token);

  Future<UserRestoreResponse> restore(String email);

  Future<UserRegisterResponse> registerUserBasicInformation({
    required BasicInformationState basicInformation,
  });

  /// userの認証
  Future<UserVerifyResponse> userVerify({
    required Certificate certificate,
    required String uuid,
    required String uid,
  });
  Future<bool> updateProfile(UserKey key, String value);
}

class UserRepository implements UserRepositoryInterface {
  UserRepository({required OshirucoApiClient client}) : _client = client;

  final OshirucoApiClient _client;

  @override
  Future<List<User>> userRecommend() async {
    try {
      final res = await _client.userRecommendRequest();
      return res.users;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> registerFcmToken(String token) {
    return _client.registerFcmToken(token);
  }

  @override
  Future<UserRegisterResponse> registerUserBasicInformation({
    required BasicInformationState basicInformation,
  }) async {
    try {
      final birthPlace = basicInformation.birthPlace;
      final livePlace = basicInformation.livePlace;
      final gender = basicInformation.gender;
      return _client.usersRegisterRequest(
        birthPlace: birthPlace?.toLabel() ?? '',
        gender: gender?.toLabel() ?? '',
        livePlace: livePlace?.toLabel() ?? '',
        nickname: basicInformation.nickName,
        account: basicInformation.mailAddress,
        fullName: '',
        code: '',
      );
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<UserVerifyResponse> userVerify({
    required Certificate certificate,
    required String uuid,
    required String uid,
  }) async {
    return _client.userVerifyRequest(
      certificate: certificate,
      uid: uid,
      uuid: uuid,
    );
  }

  @override
  Future<bool> updateProfile(UserKey key, String value) async {
    return _client.userUpdate(userKey: key, value: value);
  }

  @override
  Future<UserRestoreResponse> restore(String email) async {
    try {
      return await _client.restore(email);
    } catch (e) {
      debugPrint('##### $e');
      return const UserRestoreResponse();
    }
  }
}

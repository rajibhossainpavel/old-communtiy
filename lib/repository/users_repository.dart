import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/response/user_detail_response/user_detail_response.dart';
import 'package:oshiruco_app/model/search_filter_property/search_filter_property.dart';
import 'package:oshiruco_app/model/user_information/user_information.dart';

abstract class UsersRepositoryInterface {
  /// filter条件にmatchするUserの一覧取得
  Future<List<UserInformation>> usersSearch(
    int page, {
    required SearchFilterProperty filter,
  });

  /// uuidからUserを取得する
  /// (なおgroupsは取得できない模様...)
  Future<UserDetailResponse> fetchUserByUuid(String uuid);

  Future<bool> checkPoint(int amount);
  Future<void> usePoint(int amount);
}

class UsersRepository implements UsersRepositoryInterface {
  UsersRepository({required this.client});
  final OshirucoApiClient client;

  @override
  Future<List<UserInformation>> usersSearch(
    int page, {
    required SearchFilterProperty filter,
  }) async {
    return client.userSearchRequest(
      ageUpper: filter.ageUpper,
      ageLower: filter.ageLower,
      gender: filter.gender,
      birthPlace: filter.birthPlace,
      livePlace: filter.livePlace,
      hasPhoto: filter.hasPhoto,
      page: page,
    );
  }

  @override
  Future<UserDetailResponse> fetchUserByUuid(
    String uuid,
  ) =>
      client.fetchUserDetailRequest(uuid);

  @override
  Future<bool> checkPoint(int amount) async {
    return await client.checkPoints('search', amount);
  }

  @override
  Future<void> usePoint(int amount) async {
    return await client.usePoints('search', amount);
  }
}

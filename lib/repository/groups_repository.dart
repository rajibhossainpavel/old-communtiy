import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/group/group.dart';
import 'package:oshiruco_app/model/group_category/group_category.dart';
import 'package:oshiruco_app/model/group_detail/group_detail.dart';
import 'package:oshiruco_app/model/response/group_find_response/group_find_response.dart';

abstract class GroupsRepositoryInterface {
  /// グループの新規作成
  Future<String> groupCreate({
    required String intro,
    required String name,
    required String fileName,
    required GroupCategory category,
  });

  /// グループの更新
  Future<void> groupUpdate({
    required String groupId,
    required String intro,
    required String name,
    required String fileName,
    required GroupCategory category,
  });

  /// グループのカテゴリー一覧取得
  Future<List<GroupCategory>> groupCategories();

  /// グループカテゴリ、新着、人気グループの取得
  Future<GroupFindResponse> groupFind();

  /// カテゴリIDからグループの一覧取得
  Future<List<Group>> groupsFindByCategory(String categoryId);

  /// Uuidから所属グループの一覧取得
  Future<List<Group>> groupsFindByUuid(String uuid);

  /// group_idからグループの詳細取得
  Future<GroupDetail> groupsDetailFindById(String groupId);

  /// group_idに指定したグループに参加
  Future<bool> joinGroupByGroupId(String groupId);

  /// group_idに指定したグループから退会
  Future<bool> leaveGroupByGroupId(String groupId);

  /// group に入れるかチェック
  Future<void> checkCanJoinGroup();

  /// message を送信できるかチェック
  Future<void> checkCanSendMessage();

  /// messageに指定した内容でchatが送信された通知のpush
  Future<void> sendChatNotification(
    String groupId, {
    required String message,
    required bool isOwner,
  });

  // chatを開いた際に送信
  Future<void> groupChatRead(String groupId);
}

class GroupsRepository implements GroupsRepositoryInterface {
  GroupsRepository({required this.client});

  final OshirucoApiClient client;

  @override
  Future<String> groupCreate({
    required String intro,
    required String name,
    required String fileName,
    required GroupCategory category,
  }) async {
    if (!await _checkPoint('groupCreate')) {
      throw const PointShortageException();
    }

    final response = await client.groupCreateRequest(
      intro: intro,
      name: name,
      icon: fileName,
      categoryId: category.id,
    );

    await _usePoint('groupCreate');

    return response.groupID;
  }

  @override
  Future<void> groupUpdate({
    required String groupId,
    required String intro,
    required String name,
    required String fileName,
    required GroupCategory category,
  }) async {
    await client.groupUpdateRequest(
      groupId: groupId,
      intro: intro,
      name: name,
      icon: fileName,
      categoryId: category.id,
    );
  }

  @override
  Future<List<GroupCategory>> groupCategories() async {
    final response = await client.groupsCategoriesRequest();
    return response.categories;
  }

  @override
  Future<GroupFindResponse> groupFind() => client.groupFindRequest();

  @override
  Future<List<Group>> groupsFindByCategory(String categoryId) async {
    final response = await client.groupsFindByCategoryRequest(categoryId);
    return response.groups;
  }

  @override
  Future<List<Group>> groupsFindByUuid(String uuid) async {
    final response = await client.groupsFindByUuidRequest(uuid);
    return response.groups;
  }

  @override
  Future<GroupDetail> groupsDetailFindById(String groupId) async {
    final response = await client.groupsFindRequest(groupId);
    final group = response.group?.copyWith(blocked: response.blocked);
    if (group == null) {
      throw Exception();
    }
    return group;
  }

  @override
  Future<bool> joinGroupByGroupId(String groupId) async {
    await client.joinGroupRequest(groupId);
    await _usePoint('groupJoin');

    return true;
  }

  @override
  Future<bool> leaveGroupByGroupId(String groupId) async {
    await client.leaveGroupRequest(groupId);
    return true;
  }

  @override
  Future<void> checkCanJoinGroup() async {
    if (!await _checkPoint('groupJoin')) {
      throw const PointShortageException();
    }
  }

  @override
  Future<void> checkCanSendMessage() async {
    if (!await _checkPoint('groupChat')) {
      throw const PointShortageException();
    }
  }

  @override
  Future<void> sendChatNotification(
    String groupId, {
    required String message,
    required bool isOwner,
  }) async {
    await client.messageSendRequest(groupId, message: message);
    if (!isOwner) {
      await client.usePoints('groupChat', 1);
    }
  }

  @override
  Future<void> groupChatRead(String groupId) =>
      client.groupChatReadRequest(groupId);

  Future<void> _usePoint(String kind) async {
    return await client.usePoints(kind, 1);
  }

  Future<bool> _checkPoint(String kind) async {
    return await client.checkPoints(kind, 1);
  }
}

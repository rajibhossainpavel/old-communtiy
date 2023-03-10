import 'package:flutter/material.dart';
import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/visit_history_user/visit_history_user.dart';

abstract class VisitHistoryRepositoryInterface {
  // apiからvisitorUsersを取得
  Future<List<VisitHistoryUser>> fetch();

  // 足あとをつける
  Future<bool> add(String targetUuid);
}

class VisitHistoryRepository implements VisitHistoryRepositoryInterface {
  VisitHistoryRepository({required OshirucoApiClient client})
      : _client = client;

  final OshirucoApiClient _client;

  @override
  Future<List<VisitHistoryUser>> fetch() async {
    try {
      final res = await _client.getVisitHistoryUsers();
      return res.visitHistoryUsers;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<bool> add(String target) async {
    try {
      await _client.addVisitHistory(target);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}

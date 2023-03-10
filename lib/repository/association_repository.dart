import 'package:flutter/material.dart';
import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/block/block.dart';
import 'package:oshiruco_app/model/favorite/favorite.dart';
import 'package:oshiruco_app/model/history/history.dart';

class LikesShortageException implements Exception {
  @override
  String toString() => '挨拶が不足しています。';
}

abstract class AssociationRepositoryInterface {
  Future<List<Favorite>> listFavoriteUsers(int page);
  Future<List<Block>> listBlockUsers();

  /// userに挨拶を送る(戻り値はその結果matchingしたか否か)
  Future<bool> likeToUser(
    String targetUuid, {
    String message = '',
    bool recommend = false,
  });

  /// uuidに該当するUserをブロックする。
  Future<void> putBlockUser(String targetUuid);

  /// uuidに該当するUserをお気に入りする。
  Future<void> putFavoriteUser(String targetUuid);

  /// uuidに該当するUserをお気に入り解除する。
  Future<void> deleteFavoriteUser(String targetUuid);

  /// uuidに該当するUserを違反報告する。
  Future<void> putViolationUser(String targetUuid, {required String text});

  Future<List<History>> getAssociationHistory(int page);
}

class AssociationRepository implements AssociationRepositoryInterface {
  const AssociationRepository({
    required OshirucoApiClient client,
  }) : _client = client;

  final OshirucoApiClient _client;

  @override
  Future<List<Favorite>> listFavoriteUsers(int page) async {
    final response = await _client.getAssociationFavorite(page);
    if (response.result != 'success') {
      throw Exception();
    }

    return Future.value(response.favorites);
  }

  @override
  Future<List<Block>> listBlockUsers() async {
    final response = await _client.getAssociationBlock();
    if (response.result != 'success') {
      throw Exception();
    }

    return Future.value(response.blocks);
  }

  @override
  Future<bool> likeToUser(
    String targetUuid, {
    String message = '',
    bool recommend = false,
  }) async {
    try {
      final media = message.isEmpty ? 'simple' : 'message';
      final res = await _client.associationLikeRequest(
        targetUuid,
        message: message,
        media: media,
        where: recommend ? 'recommend' : '',
      );
      if (res.result == 'failure') {
        throw res.likes == 0 ? LikesShortageException() : Exception();
      }
      return res.isMatching;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> putBlockUser(String targetUuid) async {
    try {
      final res = await _client.putBlockUserRequest(targetUuid);
      return res;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> putFavoriteUser(String targetUuid) async {
    try {
      await _client.putFavoriteUserRequest(targetUuid);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> deleteFavoriteUser(String targetUuid) async {
    try {
      await _client.deleteFavoriteUserRequest(targetUuid);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> putViolationUser(
    String targetUuid, {
    required String text,
  }) async {
    try {
      await _client.putViolationUserRequest(
        targetUuid,
        text: text,
      );
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<List<History>> getAssociationHistory(int page) async {
    try {
      final res = await _client.getAssociationHistoryRequest(page: page);
      return res.histories;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}

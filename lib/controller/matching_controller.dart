import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/model/enum/friend_matching_type.dart';
import 'package:oshiruco_app/repository/communication_repository.dart';
import 'package:oshiruco_app/state/matching_state/matching_state.dart';

class MatchingController extends StateNotifier<MatchingState> {
  MatchingController({
    required CommunicationRepositoryInterface repository,
  })  : _repository = repository,
        super(const MatchingState());

  final CommunicationRepositoryInterface _repository;

  Future<void> fetchInitialData(BuildContext context) async {
    try {
      final res = await _repository.communications();
      state = state.copyWith(
        toLikedUUIDs: res.toLikedUUIDs,
        matchedUUIDs: res.matchedUUIDs,
        blockUUIDs: res.blockUUIDs,
        fromLikedUUIDs: res.fromLikedUUIDs,
      );
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    }
  }

  void addToLikedUUIDs(String uuid) => state = state.copyWith(toLikedUUIDs: [
        uuid,
        ...state.toLikedUUIDs,
      ]);

  void addMatchingUUIDs(String uuid) => state = state.copyWith(matchedUUIDs: [
        uuid,
        ...state.matchedUUIDs,
      ]);

  void addBlockUuid(String uuid) => state = state.copyWith(blockUUIDs: [
        uuid,
        ...state.blockUUIDs,
      ]);

  FriendMatchingType getFriendMatchingTypeFromUuid(String uuid) {
    if (state.blockUUIDs.contains(uuid)) {
      return FriendMatchingType.blocked;
    }
    if (state.matchedUUIDs.contains(uuid)) {
      return FriendMatchingType.matching;
    }
    if (state.toLikedUUIDs.contains(uuid)) {
      return FriendMatchingType.liked;
    }
    if (state.fromLikedUUIDs.contains(uuid)) {
      return FriendMatchingType.fromLiked;
    }
    return FriendMatchingType.initial;
  }
}

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/repository/network_repository.dart';
import 'package:oshiruco_app/state/next_point_state/next_point_state.dart';

class NextPointController extends StateNotifier<NextPointState> {
  NextPointController({
    required NetWorkRepository networkRepository,
  })  : _networkRepository = networkRepository,
        super(const NextPointState());

  final NetWorkRepository _networkRepository;

  // 初回の画面読み込み時はこっちを呼ぶ。
  Future<void> loadInitialData() async {
    if (state.hasLoadInitialData) {
      return;
    }
    await Future.delayed(Duration.zero, () async => await _load());
  }

  // subscriptionの購入などで、stateの更新時はこっちを呼ぶ。
  Future<void> reload() async {
    if (state.isLoading) {
      return;
    }
    await _load();
  }

  Future<void> _load() async {
    state = state.copyWith(isLoading: true);
    try {
      final res = await _networkRepository.getNextPoints();
      state = state.copyWith(
        nextPointTime: res.nextPointTime,
        nextPoint: res.nextPoint,
        hasLoadInitialData: true,
      );
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    BuildContext? context,
    @Default('') String uid,
    @Default('') String uuid,
    @Default('') String deviceToken,
    @Default(false) bool isFinishedRegisterBasicInformation,
    @Default(false) bool isFinishedUserVerify,
    @Default(<String, int>{}) Map<String, int> chatLatestTimestamps,
    @Default(0) int conciergeChatTimestamp,

    /// ログアウトしたかを判定するためのフラグ（端末変更で強制ログアウトした場合などに使用）
    @Default(false) bool loggedOut,
  }) = _AppState;
  const AppState._();
}

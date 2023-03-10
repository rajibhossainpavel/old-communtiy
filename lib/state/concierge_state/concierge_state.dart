import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/concierge_chat/concierge_chat.dart';
import 'package:oshiruco_app/model/remote_config/concierge/concierge.dart';

part 'concierge_state.freezed.dart';

@freezed
class ConciergeState with _$ConciergeState {
  const factory ConciergeState({
    @Default(<ConciergeChat>[]) List<ConciergeChat> chats,
    Concierge? concierge,
    @Default(false) bool isLoading,
    @Default(false) bool isLastPage,
    @Default(false) bool isPopped,
  }) = _ConciergeState;
  const ConciergeState._();
}

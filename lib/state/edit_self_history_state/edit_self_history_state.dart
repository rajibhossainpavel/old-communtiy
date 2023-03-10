import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/enum/emotion.dart';
import 'package:oshiruco_app/model/enum/self_history_status.dart';
import 'package:oshiruco_app/model/self_history/emotion/emotion.dart';
import 'package:oshiruco_app/model/self_history/self_history.dart';

part 'edit_self_history_state.freezed.dart';

@freezed
class EditSelfHistoryState with _$EditSelfHistoryState {
  const factory EditSelfHistoryState({
    @Default(false) bool isLoading,
    @Default('') String uid,
    @Default(<SelfHistory>[]) List<SelfHistory> releasedSelfHistory,
    @Default(<SelfHistory>[]) List<SelfHistory> draftSelfHistory,
  }) = _EditSelfHistoryState;
  const EditSelfHistoryState._();

  String fetchSentenceFromDraftSelfHistory(
      {required int age, required EmotionType type}) {
    final targetHistoryGeneration = fetchDraftHistoryFromAge(age);

    return (targetHistoryGeneration.toJson()[type.toJsonString()] as Emotion)
        .sentence;
  }

  SelfHistory fetchDraftHistoryFromAge(int age) {
    return draftSelfHistory.firstWhere(
      (history) => history.generation == age,
    );
  }

  String getSelfHistoryId(
    int age, {
    EmotionType? type,
  }) {
    final targetHistoryGeneration = fetchDraftHistoryFromAge(age);
    if (type == null) {
      return targetHistoryGeneration.id;
    }
    return (targetHistoryGeneration.toJson()[type.toJsonString()] as Emotion)
        .id;
  }

  bool isDraftStatusComplete(
    int age, {
    EmotionType? type,
  }) {
    final targetHistoryGeneration = fetchDraftHistoryFromAge(age);
    var draftStatusString = '';
    if (type == null) {
      draftStatusString = targetHistoryGeneration.photoDraftStatus;
    } else {
      draftStatusString =
          (targetHistoryGeneration.toJson()[type.toJsonString()] as Emotion)
              .draftStatus;
    }
    final draftStatus = SelfHistoryExtension.fromString(draftStatusString);
    return draftStatus.getSwitchStatus();
  }

  bool isPreviewActive() {
    final generations = [10, 20, 30, 40];
    final emotions =
        List.generate(4, (index) => EmotionTypeExtension.parseFromInt(index));
    for (final generation in generations) {
      for (final emotion in emotions) {
        if (isDraftStatusComplete(generation, type: emotion)) {
          return true;
        }
      }
      if (isDraftStatusComplete(generation)) {
        return true;
      }
    }
    return false;
  }

  bool isReleaseActive() {
    return releasedSelfHistory != draftSelfHistory;
  }
}

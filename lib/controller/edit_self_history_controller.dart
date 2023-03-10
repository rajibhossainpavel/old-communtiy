import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/model/enum/emotion.dart';
import 'package:oshiruco_app/model/enum/self_history_key_type.dart';
import 'package:oshiruco_app/model/enum/self_history_status.dart';
import 'package:oshiruco_app/model/self_history/emotion/emotion.dart';
import 'package:oshiruco_app/model/self_history/photo/photo.dart';
import 'package:oshiruco_app/model/self_history/self_history.dart';
import 'package:oshiruco_app/repository/self_history_repository.dart';
import 'package:oshiruco_app/state/edit_self_history_state/edit_self_history_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_image_deletion.dart';
import 'package:oshiruco_app/widget/component/oshiruco_dialogs.dart';

class EditSelfHistoryController extends StateNotifier<EditSelfHistoryState> {
  EditSelfHistoryController({
    required SelfHistoryRepositoryInterface repository,
    required S3Client s3Client,
  })  : _repository = repository,
        _s3client = s3Client,
        super(const EditSelfHistoryState());

  final SelfHistoryRepositoryInterface _repository;

  final S3Client _s3client;

  Future<void> loadInitialData() async {
    try {
      final historyResponse = await _repository.fetchSelfHistory(
          age: 10, status: SelfHistoryStatus.draft);
      final releasedHistoryResponse = await _repository.fetchSelfHistory(
          age: 10, status: SelfHistoryStatus.published);
      state = state.copyWith(
        uid: historyResponse.uid,
        releasedSelfHistory: releasedHistoryResponse.selfHistory,
        draftSelfHistory: historyResponse.selfHistory,
      );
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  /// images

  Future<void> removeImage(
    BuildContext context, {
    required int age,
    required int captionNumber,
  }) async {
    try {
      final targetSelfHistory = state.fetchDraftHistoryFromAge(age);
      final check = await showCheckImageDeletion(
            context,
            networkImagePath: targetSelfHistory.photos[captionNumber].photoPath,
          ) ??
          false;
      if (!check) {
        return;
      }

      state = state.copyWith(isLoading: true);
      targetSelfHistory.photos.removeAt(captionNumber);
      final updatedPhotos = targetSelfHistory.photos
          .map(
            (p) => p.toJson(),
          )
          .toList();
      await _repository.deleteSelfHistoryImage(
        generation: age,
        index: captionNumber,
        key: SelfHistoryKeyType.photos,
      );
      _updatePhotos(targetSelfHistory, updatedPhotos: updatedPhotos);
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> onUpdateImageCaption(
    BuildContext context,
    int age, {
    required int captionNumber,
    required String caption,
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      final targetSelfHistory = state.fetchDraftHistoryFromAge(age);
      final currentPhotos = targetSelfHistory.photos.toList();
      currentPhotos[captionNumber] = Photo(
        caption: caption,
        photoPath: currentPhotos[captionNumber].photoPath,
      );
      final updatedPhotos = currentPhotos.map((e) => e.toJson()).toList();

      await _updatePhotoData(
        age,
        index: captionNumber,
        value: caption,
        type: SelfHistoryKeyType.caption,
      );
      _updatePhotos(targetSelfHistory, updatedPhotos: updatedPhotos);
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> onUpdateImageSrc(
    BuildContext context,
    int age, {
    int index = 0,
    required String imageSrc,
  }) async {
    try {
      state = state.copyWith(isLoading: true);
      if (imageSrc.isEmpty) {
        return;
      }
      final imageNetworkPath = await _s3client.uploadSelfHistoryImage(imageSrc);
      final targetSelfHistory = state.fetchDraftHistoryFromAge(age);
      final currentPhotos = targetSelfHistory.photos.toList();
      if (currentPhotos.length > index) {
        // update
        currentPhotos[index] = Photo(
          caption: currentPhotos[index].caption,
          photoPath: imageNetworkPath,
        );
      } else {
        // create
        currentPhotos.add(
          Photo(
            caption: '',
            photoPath: imageNetworkPath,
          ),
        );
      }
      final updatedPhotos = currentPhotos.map((e) => e.toJson()).toList();
      await _updatePhotoData(
        age,
        index: index,
        value: imageNetworkPath,
        type: SelfHistoryKeyType.photos,
      );
      _updatePhotos(targetSelfHistory, updatedPhotos: updatedPhotos);
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void _updatePhotos(
    SelfHistory targetSelfHistory, {
    required List<Map<String, dynamic>> updatedPhotos,
  }) {
    final updatedSelfHistoryJson = <String, dynamic>{
      ...targetSelfHistory.toJson(),
      'joy': (targetSelfHistory.toJson()['joy'] as Emotion).toJson(),
      'enjoy': (targetSelfHistory.toJson()['enjoy'] as Emotion).toJson(),
      'sorrow': (targetSelfHistory.toJson()['sorrow'] as Emotion).toJson(),
      'anger': (targetSelfHistory.toJson()['anger'] as Emotion).toJson(),
      'photos': updatedPhotos,
    };
    state = state.copyWith(
      draftSelfHistory: state.draftSelfHistory
          .map(
            (history) => history == targetSelfHistory
                ? SelfHistory.fromJson(updatedSelfHistoryJson)
                : history,
          )
          .toList(),
    );
  }

  Future<void> onUpdateSentence(
    BuildContext context,
    String sentence, {
    required int age,
    required EmotionType type,
  }) async {
    try {
      state = state.copyWith(isLoading: true);
      final targetSelfHistory = state.draftSelfHistory
          .firstWhere((history) => history.generation == age);
      final updatedSelfHistoryJson = <String, dynamic>{
        ...targetSelfHistory.toJson(),
        'joy': (targetSelfHistory.toJson()['joy'] as Emotion).toJson(),
        'enjoy': (targetSelfHistory.toJson()['enjoy'] as Emotion).toJson(),
        'sorrow': (targetSelfHistory.toJson()['sorrow'] as Emotion).toJson(),
        'anger': (targetSelfHistory.toJson()['anger'] as Emotion).toJson(),
        'photos': (targetSelfHistory.toJson()['photos'] as List<Photo>)
            .toList()
            .map<Map<String, dynamic>>((photo) => photo.toJson())
            .toList(),
        type.toJsonString(): <String, dynamic>{
          ...(targetSelfHistory.toJson()[type.toJsonString()] as Emotion)
              .toJson(),
          'sentence': sentence,
        },
      };

      await _repository.putSelfHistory(
        generation: age,
        key: type.toKey(),
        value: sentence,
      );
      if (targetSelfHistory.id.isEmpty) {
        final typeString = type.toJsonString();
        final updatedSelfHistoryResponse = await _repository.fetchSelfHistory(
          age: age,
          status: SelfHistoryStatus.draft,
        );
        final updatedSelfHistory = updatedSelfHistoryResponse.selfHistory
            .firstWhere((history) => history.generation == age);

        updatedSelfHistoryJson['id'] = updatedSelfHistory.id;
        updatedSelfHistoryJson[typeString] =
            (updatedSelfHistory.toJson()[typeString] as Emotion).toJson();
      }

      state = state.copyWith(
        draftSelfHistory: state.draftSelfHistory
            .map(
              (history) => history == targetSelfHistory
                  ? SelfHistory.fromJson(updatedSelfHistoryJson)
                  : history,
            )
            .toList(),
      );
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> _updatePhotoData(
    int age, {
    required int index,
    required String value,
    required SelfHistoryKeyType type,
  }) async {
    await _repository.putSelfHistoryImage(
      generation: age,
      index: index,
      type: type,
      value: value,
    );
  }

  Future<void> updateStatus(
    BuildContext context, {
    required int age,
    EmotionType? type,
    required SelfHistoryStatus status,
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      final targetSelfHistory = state.fetchDraftHistoryFromAge(age);
      var updatedSelfHistoryJson = <String, dynamic>{};
      if (type == null) {
        updatedSelfHistoryJson = <String, dynamic>{
          ...targetSelfHistory.toJson(),
          'joy': (targetSelfHistory.toJson()['joy'] as Emotion).toJson(),
          'enjoy': (targetSelfHistory.toJson()['enjoy'] as Emotion).toJson(),
          'sorrow': (targetSelfHistory.toJson()['sorrow'] as Emotion).toJson(),
          'anger': (targetSelfHistory.toJson()['anger'] as Emotion).toJson(),
          'photos': (targetSelfHistory.toJson()['photos'] as List<Photo>)
              .toList()
              .map<Map<String, dynamic>>((photo) => photo.toJson())
              .toList(),
          'photoDraftStatus': status.toParam(),
        };
      } else {
        updatedSelfHistoryJson = <String, dynamic>{
          ...targetSelfHistory.toJson(),
          'joy': (targetSelfHistory.toJson()['joy'] as Emotion).toJson(),
          'enjoy': (targetSelfHistory.toJson()['enjoy'] as Emotion).toJson(),
          'sorrow': (targetSelfHistory.toJson()['sorrow'] as Emotion).toJson(),
          'anger': (targetSelfHistory.toJson()['anger'] as Emotion).toJson(),
          'photos': (targetSelfHistory.toJson()['photos'] as List<Photo>)
              .toList()
              .map<Map<String, dynamic>>((photo) => photo.toJson())
              .toList(),
        };

        final typeString = type.toJsonString();
        updatedSelfHistoryJson[typeString] = <String, dynamic>{
          ...(targetSelfHistory.toJson()[typeString] as Emotion).toJson(),
          'draftStatus': status.toParam()
        };
      }
      final id = state.getSelfHistoryId(age, type: type);
      if (id == '') {
        return;
      }
      await _repository.putSelfHistoryStatus(
        id,
        status: status,
      );
      state = state.copyWith(
        draftSelfHistory: state.draftSelfHistory
            .map(
              (history) => history == targetSelfHistory
                  ? SelfHistory.fromJson(updatedSelfHistoryJson)
                  : history,
            )
            .toList(),
      );
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> onTapRelease(BuildContext context) async {
    state = state.copyWith(isLoading: true);
    try {
      await _repository.publishSelfHistory();
      await OshirucoDialogs.publishSelfHistory(context);
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}

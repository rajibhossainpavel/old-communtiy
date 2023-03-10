import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/diary_comment_controller.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/diary_comment_state.dart';

final diaryCommentProvider = AutoDisposeStateNotifierProviderFamily<
    DiaryCommentController, DiaryCommentState, Diary>(
  (ref, diary) => DiaryCommentController(
    diary: diary,
    uuid: ref.read(uuidProvider),
    diariesRepositoryInterface: ref.read(diariesRepositoryProvider),
    usersRepositoryInterface: ref.read(usersRepositoryProvider),
    communicationRepositoryInterface: ref.read(communicationRepositoryProvider),
  ),
);

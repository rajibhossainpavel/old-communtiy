import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/diary_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/diary_state.dart';

final diaryProvider =
    StateNotifierProvider.autoDispose<DiaryController, DiaryState>(
  (ref) => DiaryController(
    ref.read(uuidProvider),
    ref.read(diariesRepositoryProvider),
  ),
);

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/edit_self_history_controller.dart';
import 'package:oshiruco_app/controller/preview_self_history_controller.dart';
import 'package:oshiruco_app/controller/self_history_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/provider/s3_client_provider.dart';
import 'package:oshiruco_app/state/edit_self_history_state/edit_self_history_state.dart';
import 'package:oshiruco_app/state/preview_self_history_state/preview_self_history_state.dart';
import 'package:oshiruco_app/state/self_history_state/self_history_state.dart';

final selfHistoryProvider = StateNotifierProvider.family<SelfHistoryController,
    SelfHistoryState, String>(
  (ref, String uuid) => SelfHistoryController(
    selfhistoryRepository: ref.read(selfhistoryRepositoryProvider),
    uuid: uuid,
  ),
);

final editSelfHistoryProvider =
    StateNotifierProvider<EditSelfHistoryController, EditSelfHistoryState>(
  (ref) => EditSelfHistoryController(
    repository: ref.read(selfhistoryRepositoryProvider),
    s3Client: ref.read(s3ClientProvider),
  ),
);

final previewSelfHistoryProvider = StateNotifierProvider<
    PreviewSelfHistoryController, PreviewSelfHistoryState>(
  (ref) => PreviewSelfHistoryController(
    selfHistoryRepository: ref.read(selfhistoryRepositoryProvider),
    usersRepository: ref.read(usersRepositoryProvider),
    uuid: ref.read(uuidProvider),
  ),
);

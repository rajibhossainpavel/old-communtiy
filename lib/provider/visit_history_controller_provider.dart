import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/visit_history_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/visit_history_state.dart';

final visitHistoryControllerProvider = StateNotifierProvider.autoDispose<
    VisitHistoryController, VisitHistoryState>(
  (ref) => VisitHistoryController(
    uuid: ref.read(uuidProvider),
    usersRepository: ref.read(usersRepositoryProvider),
    visitHistoryRepository: ref.read(visitHistoryRepositoryProvider),
    storage: ref.read(flutterSecureStorageProvider),
  ),
);

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/create_diary_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/provider/s3_client_provider.dart';
import 'package:oshiruco_app/state/create_diary_state.dart';

final createDiaryProvider =
    StateNotifierProvider.autoDispose<CreateDiaryController, CreateDiaryState>(
  (ref) => CreateDiaryController(
    uuid: ref.watch(uuidProvider),
    diariesRepository: ref.watch(diariesRepositoryProvider),
    pointsRepository: ref.watch(pointsRepositoryProvider),
    usersRepository: ref.watch(usersRepositoryProvider),
    s3Client: ref.watch(s3ClientProvider),
  ),
);

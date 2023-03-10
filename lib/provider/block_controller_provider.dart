import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/block_controller.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/block_state.dart';

final blockControllerProvider =
    StateNotifierProvider.autoDispose<BlockController, BlockState>(
  (ref) => BlockController(
    associationRepository: ref.read(
      associationRepositoryProvider,
    ),
  ),
);

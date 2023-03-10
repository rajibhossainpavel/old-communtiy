import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/favorite_controller.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/favorite_state.dart';

final favoriteControllerProvider =
    StateNotifierProvider.autoDispose<FavoriteController, FavoriteState>(
  (ref) => FavoriteController(
    associationRepository: ref.read(
      associationRepositoryProvider,
    ),
  ),
);

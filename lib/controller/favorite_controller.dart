import 'package:flutter/cupertino.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/repository/association_repository.dart';
import 'package:oshiruco_app/state/favorite_state.dart';

class FavoriteController extends StateNotifier<FavoriteState> {
  FavoriteController({
    required this.associationRepository,
  }) : super(const FavoriteState()) {
    _fetchFavorites();
  }

  final AssociationRepository associationRepository;
  var _page = 1;

  Future<void> _fetchFavorites() async {
    final favorites = await associationRepository.listFavoriteUsers(_page);
    state = state.copyWith(favorites: favorites);
  }

  Future<void> reload() async {
    _page = 1;
    await _fetchFavorites();
  }

  Future<void> fetchNext(BuildContext context) async {
    if (!state.hasNext) {
      return;
    }

    _page++;
    try {
      final favorites = await associationRepository.listFavoriteUsers(_page);

      // 空だったら次は取得しない
      if (favorites.isEmpty) {
        state = state.copyWith(hasNext: false);
      }
      final currentUsers = state.favorites ?? [];
      currentUsers.addAll(favorites);
      state = state.copyWith(favorites: currentUsers);
    } catch (e) {
      showErrorDialog(context, e);
    }
  }
}

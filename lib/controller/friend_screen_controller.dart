import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/model/search_filter_property/search_filter_property.dart';
import 'package:oshiruco_app/repository/communication_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/friend_screen_state/friend_screen_state.dart';

class FriendScreenController extends StateNotifier<FriendScreenState> {
  FriendScreenController({
    required UsersRepositoryInterface usersRepository,
    required CommunicationRepositoryInterface communicationRepository,
  })  : _usersRepository = usersRepository,
        _communicationRepository = communicationRepository,
        super(
          const FriendScreenState(),
        );

  final UsersRepositoryInterface _usersRepository;

  final CommunicationRepositoryInterface _communicationRepository;

  final scrollController = ScrollController();

  late Set<String> _hiddenUserUUIDs;

  Future<void> loadInitialData(SearchFilterProperty filter) async {
    try {
      final communicationRes = await _communicationRepository.communications();
      state = state.copyWith(searchFilterProperty: filter);

      /// 挨拶が不可能なuserは全て非表示。
      _hiddenUserUUIDs = <String>{
        ...communicationRes.blockUUIDs,
        ...communicationRes.matchedUUIDs,
        ...communicationRes.toLikedUUIDs
      };

      await load(filter);
      scrollController.addListener(() {
        _handleScrollChanged(state.searchFilterProperty);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  // userに挨拶、blockをした際に、listからuuidに該当するuserを非表示にする。
  void addHiddenUser(String uuid) {
    final updatedUsers = [...state.users];
    updatedUsers.removeWhere((user) => user.uuid == uuid);

    _hiddenUserUUIDs = <String>{..._hiddenUserUUIDs, uuid};

    state = state.copyWith(users: updatedUsers);
  }

  void _handleScrollChanged(SearchFilterProperty filter) {
    final maxScrollExtent = scrollController.position.maxScrollExtent;
    final currentPosition = scrollController.position.pixels;
    if (state.isLoading ||
        state.isLastPage ||
        maxScrollExtent - 50 > currentPosition) {
      return;
    }
    load(filter);
  }

  Future<void> load(SearchFilterProperty filter) async {
    state = state.copyWith(isLoading: true, searchFilterProperty: filter);
    try {
      final fetchedUser = await _usersRepository.usersSearch(
        state.currentPage + 1,
        filter: filter,
      );
      final filtered = fetchedUser.toList()
        ..removeWhere((user) => _hiddenUserUUIDs.contains(user.uuid));
      state = state.copyWith(
        isLastPage: fetchedUser.length < 20,
        isLoading: false,
        currentPage: state.currentPage + 1,
        users: [
          ...state.users,
          ...filtered,
        ],
      );
    } catch (e) {
      state = state.copyWith(isLoading: false);
      debugPrint(e.toString());
    }
  }

  Future<bool> reload(SearchFilterProperty filter) async {
    state = state.copyWith(isLoading: true, searchFilterProperty: filter);
    try {
      if (scrollController.hasClients) {
        scrollController.jumpTo(0.0);
      }
      final fetchedUser = await _usersRepository.usersSearch(
        1,
        filter: filter,
      );
      final filtered = fetchedUser.toList()
        ..removeWhere((user) => _hiddenUserUUIDs.contains(user.uuid));

      state = state.copyWith(
        isLastPage: fetchedUser.length < 20,
        isLoading: false,
        currentPage: 1,
        users: filtered,
      );
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false);
      debugPrint(e.toString());
      return false;
    }
  }
}

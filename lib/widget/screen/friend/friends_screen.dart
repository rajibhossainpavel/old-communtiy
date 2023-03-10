import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/provider/friend_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/friend/friend_list.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '仲間',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => routemaster.push('/info'),
          icon: const Icon(
            Icons.info_outline,
            size: 28,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => routemaster.push('/friends/filter'),
            icon: const Icon(
              Icons.search,
              size: 28,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5),
          IconButton(
            onPressed: () => routemaster.push('/my_page'),
            icon: const Icon(
              Icons.person_outline,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: const Center(
        child: FriendScreenBase(),
      ),
    );
  }
}

class FriendScreenBase extends HookConsumerWidget {
  const FriendScreenBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(friendScreenProvider.notifier);
    final state = ref.watch(friendScreenProvider);
    final create = useMemoized(
      () => controller.loadInitialData(state.searchFilterProperty),
    );
    final snapshot = useFuture(create);
    if (snapshot.hasError) {
      return const Text('error');
    } else if (snapshot.connectionState == ConnectionState.done) {
      final users =
          ref.watch(friendScreenProvider.select((state) => state.users));
      return RefreshIndicator(
        onRefresh: () => controller.reload(
          state.searchFilterProperty,
        ),
        child: FriendList(users),
      );
    } else {
      return Container(
        height: 48,
        width: 48,
        alignment: Alignment.center,
        child: const OshirucoCircleProgressIndicator(),
      );
    }
  }
}

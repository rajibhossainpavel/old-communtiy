import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routemaster/routemaster.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/controller/favorite_controller.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/provider/favorite_controller_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/favorite_state.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/widget/component/user_cell.dart';

class FavoriteScreen extends HookConsumerWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(favoriteControllerProvider.notifier);
    final state = ref.watch(favoriteControllerProvider);

    useEffect(() {
      final observer = _Observer(() async => await controller.reload());
      routemaster.observers.add(observer);

      return () => routemaster.observers.remove(observer);
    }, []);

    return Scaffold(
      appBar: oshirucoAppBar(title: 'お気に入り'),
      body: _body(controller, state),
    );
  }

  Widget _body(FavoriteController controller, FavoriteState state) {
    final favorites = state.favorites;

    if (favorites == null) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }

    if (favorites.isEmpty) {
      return _emptyState();
    }

    var itemCount = favorites.length;
    if (state.hasNext) {
      itemCount++;
    }

    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (index == favorites.length) {
          controller.fetchNext(context);
          return const Center(
            child: OshirucoCircleProgressIndicator(),
          );
        }

        final favorite = favorites[index];
        return GestureDetector(
          onTap: () => routemaster.push('detail/${favorite.uuid}'),
          child: UserCell(
            userIcon: favorite.userIcon.profilePhoto(),
            nickname: favorite.nickname,
            age: favorite.age.toOshirucoAge(),
            gender: favorite.gender,
            livePlace: favorite.livePlace,
          ),
        );
      },
    );
  }

  Center _emptyState() {
    final context = useContext();
    final displaySize = MediaQuery.of(context).size;
    final paddingHeight = displaySize.height * 0.14;
    final imageWidth = displaySize.width * 0.4;
    return Center(
      child: Column(
        children: [
          SizedBox(height: paddingHeight),
          Assets.images.logoFavorite.image(width: imageWidth),
          const SizedBox(height: 20),
          const Text(
            'まだお気に入りがありません',
            style: OshirucoTextStyles.largeGreenBold,
          ),
          const SizedBox(height: 40),
          const Text(
            '「仲間」から積極的にお相手を探して\nお気に入りに入れましょう。',
            textAlign: TextAlign.center,
            style: OshirucoTextStyles.medium,
          ),
        ],
      ),
    );
  }
}

class _Observer extends RoutemasterObserver {
  _Observer(this.onPop);
  VoidCallback onPop;

  @override
  void didPop(Route route, Route? previousRoute) {
    onPop();
  }
}

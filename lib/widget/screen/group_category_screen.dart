import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/provider/group_screen_provider.dart';
import 'package:oshiruco_app/widget/component/group_tile.dart';

class GroupCategoryScreen extends HookConsumerWidget {
  const GroupCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupCategory = ref.watch(
      groupCategoryScreenProvider.select((state) => state.groupCategory),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          groupCategory?.name ?? '',
        ),
        centerTitle: true,
      ),
      body: const GroupCategoryBase(),
    );
  }
}

class GroupCategoryBase extends HookConsumerWidget {
  const GroupCategoryBase({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(groupCategoryScreenProvider.notifier);
    final create = useMemoized(
      () => controller.loadInitialData(),
    );
    final snapshot = useFuture(create);
    if (snapshot.error != null) {
      return Center(child: Text(snapshot.error.toString()));
    } else if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: OshirucoCircleProgressIndicator());
    }
    final groups =
        ref.watch(groupCategoryScreenProvider.select((state) => state.groups));
    return GridView.builder(
      physics: const ClampingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 10 / 14,
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (context, index) => GroupTile.fromGroup(groups[index]),
      itemCount: groups.length,
    );
  }
}

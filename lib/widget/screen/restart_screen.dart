import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/provider/app_provider.dart';

class RestartScreen extends HookConsumerWidget {
  const RestartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final initController = ref.read(appProvider.notifier);
      initController.restartApplication();
    });

    return Container();
  }
}

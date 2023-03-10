import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/basic_information_view_model.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/basic_information_state.dart';

final basicInformationProvider =
    StateNotifierProvider<BasicInformationController, BasicInformationState>(
  (ref) => BasicInformationController(
    repository: ref.read(userRepositoryProvider),
    appController: ref.watch(appProvider.notifier),
  ),
);

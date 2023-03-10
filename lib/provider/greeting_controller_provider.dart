import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/greeting_controller.dart';
import 'package:oshiruco_app/state/greeting_state.dart';

final greetingControllerProvider =
    StateNotifierProvider.autoDispose<GreetingController, GreetingState>(
  (ref) => GreetingController(),
);

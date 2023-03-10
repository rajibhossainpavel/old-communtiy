import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/complete_register_controller.dart';

final completeRegisterProvider = Provider<CompleteRegisterController>(
  (ref) => CompleteRegisterController(),
);

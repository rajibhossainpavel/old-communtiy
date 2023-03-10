import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/error_controller.dart';
import 'package:oshiruco_app/state/error_state.dart';

final errorProvider = StateNotifierProvider<ErrorController, ErrorState>(
  (ref) => ErrorController(),
);

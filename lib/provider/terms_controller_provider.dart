import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/terms_controller.dart';
import 'package:oshiruco_app/state/terms_state.dart';

final termsControllerProvider =
    StateNotifierProvider.autoDispose<TermsController, TermsState>(
  (ref) => TermsController(),
);

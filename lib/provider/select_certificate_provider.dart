import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/select_certificate_controller.dart';
import 'package:oshiruco_app/state/select_certificate_state.dart';

final selectCertificateProvider =
    StateNotifierProvider<SelectCertificateController, SelectCertificateState>(
  (ref) => SelectCertificateController(),
);

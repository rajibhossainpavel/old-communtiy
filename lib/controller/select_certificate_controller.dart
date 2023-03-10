import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/analytics.dart';
import 'package:oshiruco_app/model/enum/certificate.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/select_certificate_state.dart';
import 'package:oshiruco_app/widget/screen/upload_certificate_screen.dart';

class SelectCertificateController
    extends StateNotifier<SelectCertificateState> {
  SelectCertificateController() : super(const SelectCertificateState());

  void onTapUseWithoutCertificate() {}

  void onSelectCertificate(Certificate? certificate) {
    state = state.copyWith(certificate: certificate);
  }

  void onTapNext() {
    final certificate = state.certificate;
    if (certificate == null) {
      return;
    }

    Analytics.registerSelectedCertificate(state.certificate);

    routemaster.push(
      'upload-certificate',
      queryParameters: {
        UploadCertificateScreen.certificationType: certificate.toString()
      },
    );
  }
}

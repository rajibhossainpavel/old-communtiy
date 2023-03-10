import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:oshiruco_app/state/terms_state.dart';

class TermsController extends StateNotifier<TermsState> {
  TermsController() : super(const TermsState()) {
    _getVersion();
  }

  Future<void> _getVersion() async {
    final info = await PackageInfo.fromPlatform();
    state = state.copyWith(version: info.version);
  }
}

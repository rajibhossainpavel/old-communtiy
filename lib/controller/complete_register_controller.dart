import 'package:oshiruco_app/application/analytics.dart';
import 'package:oshiruco_app/router.dart';

class CompleteRegisterController {
  CompleteRegisterController() {
    Analytics.registerCompleted();
  }

  void onTapUseApp() {
    routemaster.replace(
      '/',
      queryParameters: {
        navigateToHomeParamKey: 'true',
      },
    );
  }
}

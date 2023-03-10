import 'package:oshiruco_app/model/enum/register_state.dart';

class AppVersionException implements Exception {}

class MaintenanceException implements Exception {
  const MaintenanceException(this.msg);

  final String msg;
}

class DeviceChangedException implements Exception {
  const DeviceChangedException();
}

class RegisterStateException implements Exception {
  const RegisterStateException(this.registerState);

  final RegisterState registerState;
}

class PointShortageException implements Exception {
  const PointShortageException();
}

class HttpErrorException implements Exception {
  const HttpErrorException();
}

class HttpBadGatewayException implements HttpErrorException {
  const HttpBadGatewayException();
}

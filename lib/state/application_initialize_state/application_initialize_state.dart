import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/response/application_init_response/application_init_response.dart';

part 'application_initialize_state.freezed.dart';

@freezed
class ApplicationInitializeState with _$ApplicationInitializeState {
  const factory ApplicationInitializeState({
    ApplicationInitResponse? information,
  }) = _ApplicationInitializeState;
  const ApplicationInitializeState._();
}

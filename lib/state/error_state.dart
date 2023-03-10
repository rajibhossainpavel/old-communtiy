import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/exception/exception.dart';

part 'error_state.freezed.dart';

@freezed
class ErrorState with _$ErrorState {
  const factory ErrorState({
    HttpErrorException? error,
  }) = _ErrorState;
  const ErrorState._();
}

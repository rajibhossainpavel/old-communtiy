import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/state/error_state.dart';

class ErrorController extends StateNotifier<ErrorState> {
  ErrorController() : super(const ErrorState());

  void setHttpError(HttpErrorException error) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      state = state.copyWith(error: error);
    });
  }
}

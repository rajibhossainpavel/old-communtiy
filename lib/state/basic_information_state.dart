import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/enum/gender.dart';
import 'package:oshiruco_app/model/enum/prefecture.dart';

part 'basic_information_state.freezed.dart';

@freezed
class BasicInformationState with _$BasicInformationState {
  const factory BasicInformationState({
    @Default('') String nickName,
    @Default('') String mailAddress,
    Gender? gender,
    Prefecture? livePlace,
    Prefecture? birthPlace,
    @Default(false) bool isLoading,
  }) = _BasicInformationState;

  const BasicInformationState._();

  bool get isInputted =>
      nickName.isNotEmpty &&
      mailAddress.isNotEmpty &&
      gender != null &&
      livePlace != null &&
      birthPlace != null;
}

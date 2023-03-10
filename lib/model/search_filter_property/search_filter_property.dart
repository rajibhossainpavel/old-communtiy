import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/enum/filter_type.dart';

part 'search_filter_property.freezed.dart';
part 'search_filter_property.g.dart';

@freezed
class SearchFilterProperty with _$SearchFilterProperty {
  const factory SearchFilterProperty({
    @Default('') String gender,
    @Default('') String age,
    @Default('') String birthPlace,
    @Default('') String livePlace,
    @Default('') String hasPhoto,
    @Default(1) int page,
  }) = _SearchFilterProperty;
  const SearchFilterProperty._();

  String get ageLower {
    if (age.isEmpty) {
      return '';
    }
    switch (ageRangeFromString(age)) {
      case AgeRange.zeroFive:
        return '0';
      case AgeRange.sixTen:
        return '6';
      case AgeRange.elevenFifteen:
        return '11';
      case AgeRange.sixteenTwenty:
        return '16';
      case AgeRange.twentyOneTwentyFive:
        return '21';
      case AgeRange.twentySixThirty:
        return '26';
      case AgeRange.thirtyOneThirtyFive:
        return '31';
      case AgeRange.thirtySixForty:
        return '36';
      case AgeRange.fortyOneFortyFive:
        return '41';
      case AgeRange.fortySixFifty:
        return '46';
      case AgeRange.fiftyOne:
        return '51';
    }
  }

  String get ageUpper {
    if (age.isEmpty) {
      return '';
    }
    switch (ageRangeFromString(age)) {
      case AgeRange.zeroFive:
        return '5';
      case AgeRange.sixTen:
        return '10';
      case AgeRange.elevenFifteen:
        return '15';
      case AgeRange.sixteenTwenty:
        return '20';
      case AgeRange.twentyOneTwentyFive:
        return '25';
      case AgeRange.twentySixThirty:
        return '30';
      case AgeRange.thirtyOneThirtyFive:
        return '35';
      case AgeRange.thirtySixForty:
        return '40';
      case AgeRange.fortyOneFortyFive:
        return '45';
      case AgeRange.fortySixFifty:
        return '50';
      case AgeRange.fiftyOne:
        return '';
    }
  }

  factory SearchFilterProperty.fromJson(Map<String, dynamic> json) =>
      _$SearchFilterPropertyFromJson(json);
}

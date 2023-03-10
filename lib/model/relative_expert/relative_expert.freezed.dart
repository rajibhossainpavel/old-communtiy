// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'relative_expert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RelativeExpert _$RelativeExpertFromJson(Map<String, dynamic> json) {
  return _RelativeExpert.fromJson(json);
}

/// @nodoc
class _$RelativeExpertTearOff {
  const _$RelativeExpertTearOff();

  _RelativeExpert call({String expertID = '', String expertName = ''}) {
    return _RelativeExpert(
      expertID: expertID,
      expertName: expertName,
    );
  }

  RelativeExpert fromJson(Map<String, Object> json) {
    return RelativeExpert.fromJson(json);
  }
}

/// @nodoc
const $RelativeExpert = _$RelativeExpertTearOff();

/// @nodoc
mixin _$RelativeExpert {
  String get expertID => throw _privateConstructorUsedError;
  String get expertName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelativeExpertCopyWith<RelativeExpert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelativeExpertCopyWith<$Res> {
  factory $RelativeExpertCopyWith(
          RelativeExpert value, $Res Function(RelativeExpert) then) =
      _$RelativeExpertCopyWithImpl<$Res>;
  $Res call({String expertID, String expertName});
}

/// @nodoc
class _$RelativeExpertCopyWithImpl<$Res>
    implements $RelativeExpertCopyWith<$Res> {
  _$RelativeExpertCopyWithImpl(this._value, this._then);

  final RelativeExpert _value;
  // ignore: unused_field
  final $Res Function(RelativeExpert) _then;

  @override
  $Res call({
    Object? expertID = freezed,
    Object? expertName = freezed,
  }) {
    return _then(_value.copyWith(
      expertID: expertID == freezed
          ? _value.expertID
          : expertID // ignore: cast_nullable_to_non_nullable
              as String,
      expertName: expertName == freezed
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RelativeExpertCopyWith<$Res>
    implements $RelativeExpertCopyWith<$Res> {
  factory _$RelativeExpertCopyWith(
          _RelativeExpert value, $Res Function(_RelativeExpert) then) =
      __$RelativeExpertCopyWithImpl<$Res>;
  @override
  $Res call({String expertID, String expertName});
}

/// @nodoc
class __$RelativeExpertCopyWithImpl<$Res>
    extends _$RelativeExpertCopyWithImpl<$Res>
    implements _$RelativeExpertCopyWith<$Res> {
  __$RelativeExpertCopyWithImpl(
      _RelativeExpert _value, $Res Function(_RelativeExpert) _then)
      : super(_value, (v) => _then(v as _RelativeExpert));

  @override
  _RelativeExpert get _value => super._value as _RelativeExpert;

  @override
  $Res call({
    Object? expertID = freezed,
    Object? expertName = freezed,
  }) {
    return _then(_RelativeExpert(
      expertID: expertID == freezed
          ? _value.expertID
          : expertID // ignore: cast_nullable_to_non_nullable
              as String,
      expertName: expertName == freezed
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelativeExpert extends _RelativeExpert {
  const _$_RelativeExpert({this.expertID = '', this.expertName = ''})
      : super._();

  factory _$_RelativeExpert.fromJson(Map<String, dynamic> json) =>
      _$_$_RelativeExpertFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String expertID;
  @JsonKey(defaultValue: '')
  @override
  final String expertName;

  @override
  String toString() {
    return 'RelativeExpert(expertID: $expertID, expertName: $expertName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RelativeExpert &&
            (identical(other.expertID, expertID) ||
                const DeepCollectionEquality()
                    .equals(other.expertID, expertID)) &&
            (identical(other.expertName, expertName) ||
                const DeepCollectionEquality()
                    .equals(other.expertName, expertName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(expertID) ^
      const DeepCollectionEquality().hash(expertName);

  @JsonKey(ignore: true)
  @override
  _$RelativeExpertCopyWith<_RelativeExpert> get copyWith =>
      __$RelativeExpertCopyWithImpl<_RelativeExpert>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RelativeExpertToJson(this);
  }
}

abstract class _RelativeExpert extends RelativeExpert {
  const factory _RelativeExpert({String expertID, String expertName}) =
      _$_RelativeExpert;
  const _RelativeExpert._() : super._();

  factory _RelativeExpert.fromJson(Map<String, dynamic> json) =
      _$_RelativeExpert.fromJson;

  @override
  String get expertID => throw _privateConstructorUsedError;
  @override
  String get expertName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RelativeExpertCopyWith<_RelativeExpert> get copyWith =>
      throw _privateConstructorUsedError;
}

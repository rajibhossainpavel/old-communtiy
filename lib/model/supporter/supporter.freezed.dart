// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'supporter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Supporter _$SupporterFromJson(Map<String, dynamic> json) {
  return _Supporter.fromJson(json);
}

/// @nodoc
class _$SupporterTearOff {
  const _$SupporterTearOff();

  _Supporter call(
      {required String codeURL,
      required String code,
      required String name,
      required int id,
      required String type,
      required String status}) {
    return _Supporter(
      codeURL: codeURL,
      code: code,
      name: name,
      id: id,
      type: type,
      status: status,
    );
  }

  Supporter fromJson(Map<String, Object> json) {
    return Supporter.fromJson(json);
  }
}

/// @nodoc
const $Supporter = _$SupporterTearOff();

/// @nodoc
mixin _$Supporter {
  String get codeURL => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupporterCopyWith<Supporter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupporterCopyWith<$Res> {
  factory $SupporterCopyWith(Supporter value, $Res Function(Supporter) then) =
      _$SupporterCopyWithImpl<$Res>;
  $Res call(
      {String codeURL,
      String code,
      String name,
      int id,
      String type,
      String status});
}

/// @nodoc
class _$SupporterCopyWithImpl<$Res> implements $SupporterCopyWith<$Res> {
  _$SupporterCopyWithImpl(this._value, this._then);

  final Supporter _value;
  // ignore: unused_field
  final $Res Function(Supporter) _then;

  @override
  $Res call({
    Object? codeURL = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      codeURL: codeURL == freezed
          ? _value.codeURL
          : codeURL // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SupporterCopyWith<$Res> implements $SupporterCopyWith<$Res> {
  factory _$SupporterCopyWith(
          _Supporter value, $Res Function(_Supporter) then) =
      __$SupporterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String codeURL,
      String code,
      String name,
      int id,
      String type,
      String status});
}

/// @nodoc
class __$SupporterCopyWithImpl<$Res> extends _$SupporterCopyWithImpl<$Res>
    implements _$SupporterCopyWith<$Res> {
  __$SupporterCopyWithImpl(_Supporter _value, $Res Function(_Supporter) _then)
      : super(_value, (v) => _then(v as _Supporter));

  @override
  _Supporter get _value => super._value as _Supporter;

  @override
  $Res call({
    Object? codeURL = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_Supporter(
      codeURL: codeURL == freezed
          ? _value.codeURL
          : codeURL // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Supporter extends _Supporter {
  const _$_Supporter(
      {required this.codeURL,
      required this.code,
      required this.name,
      required this.id,
      required this.type,
      required this.status})
      : super._();

  factory _$_Supporter.fromJson(Map<String, dynamic> json) =>
      _$_$_SupporterFromJson(json);

  @override
  final String codeURL;
  @override
  final String code;
  @override
  final String name;
  @override
  final int id;
  @override
  final String type;
  @override
  final String status;

  @override
  String toString() {
    return 'Supporter(codeURL: $codeURL, code: $code, name: $name, id: $id, type: $type, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Supporter &&
            (identical(other.codeURL, codeURL) ||
                const DeepCollectionEquality()
                    .equals(other.codeURL, codeURL)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(codeURL) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$SupporterCopyWith<_Supporter> get copyWith =>
      __$SupporterCopyWithImpl<_Supporter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SupporterToJson(this);
  }
}

abstract class _Supporter extends Supporter {
  const factory _Supporter(
      {required String codeURL,
      required String code,
      required String name,
      required int id,
      required String type,
      required String status}) = _$_Supporter;
  const _Supporter._() : super._();

  factory _Supporter.fromJson(Map<String, dynamic> json) =
      _$_Supporter.fromJson;

  @override
  String get codeURL => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SupporterCopyWith<_Supporter> get copyWith =>
      throw _privateConstructorUsedError;
}

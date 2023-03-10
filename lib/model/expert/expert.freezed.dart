// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'expert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Expert _$ExpertFromJson(Map<String, dynamic> json) {
  return _Expert.fromJson(json);
}

/// @nodoc
class _$ExpertTearOff {
  const _$ExpertTearOff();

  _Expert call({String name = '', String id = ''}) {
    return _Expert(
      name: name,
      id: id,
    );
  }

  Expert fromJson(Map<String, Object> json) {
    return Expert.fromJson(json);
  }
}

/// @nodoc
const $Expert = _$ExpertTearOff();

/// @nodoc
mixin _$Expert {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertCopyWith<Expert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertCopyWith<$Res> {
  factory $ExpertCopyWith(Expert value, $Res Function(Expert) then) =
      _$ExpertCopyWithImpl<$Res>;
  $Res call({String name, String id});
}

/// @nodoc
class _$ExpertCopyWithImpl<$Res> implements $ExpertCopyWith<$Res> {
  _$ExpertCopyWithImpl(this._value, this._then);

  final Expert _value;
  // ignore: unused_field
  final $Res Function(Expert) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExpertCopyWith<$Res> implements $ExpertCopyWith<$Res> {
  factory _$ExpertCopyWith(_Expert value, $Res Function(_Expert) then) =
      __$ExpertCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id});
}

/// @nodoc
class __$ExpertCopyWithImpl<$Res> extends _$ExpertCopyWithImpl<$Res>
    implements _$ExpertCopyWith<$Res> {
  __$ExpertCopyWithImpl(_Expert _value, $Res Function(_Expert) _then)
      : super(_value, (v) => _then(v as _Expert));

  @override
  _Expert get _value => super._value as _Expert;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_Expert(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Expert extends _Expert {
  const _$_Expert({this.name = '', this.id = ''}) : super._();

  factory _$_Expert.fromJson(Map<String, dynamic> json) =>
      _$_$_ExpertFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String id;

  @override
  String toString() {
    return 'Expert(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Expert &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ExpertCopyWith<_Expert> get copyWith =>
      __$ExpertCopyWithImpl<_Expert>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExpertToJson(this);
  }
}

abstract class _Expert extends Expert {
  const factory _Expert({String name, String id}) = _$_Expert;
  const _Expert._() : super._();

  factory _Expert.fromJson(Map<String, dynamic> json) = _$_Expert.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExpertCopyWith<_Expert> get copyWith => throw _privateConstructorUsedError;
}

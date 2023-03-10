// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friend_filtering_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendFilteringStateTearOff {
  const _$FriendFilteringStateTearOff();

  _FriendFilteringState call(
      {UserStatus userStatus = UserStatus.osato,
      SearchFilterProperty property = const SearchFilterProperty(),
      Map<FilterType, bool> checkMap = const <FilterType, bool>{}}) {
    return _FriendFilteringState(
      userStatus: userStatus,
      property: property,
      checkMap: checkMap,
    );
  }
}

/// @nodoc
const $FriendFilteringState = _$FriendFilteringStateTearOff();

/// @nodoc
mixin _$FriendFilteringState {
  UserStatus get userStatus => throw _privateConstructorUsedError;
  SearchFilterProperty get property => throw _privateConstructorUsedError;

  /// 検索画面でチェックボックスがチェックされているかどうか（ポイントが不要な検索項目の場合は true）
  Map<FilterType, bool> get checkMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendFilteringStateCopyWith<FriendFilteringState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendFilteringStateCopyWith<$Res> {
  factory $FriendFilteringStateCopyWith(FriendFilteringState value,
          $Res Function(FriendFilteringState) then) =
      _$FriendFilteringStateCopyWithImpl<$Res>;
  $Res call(
      {UserStatus userStatus,
      SearchFilterProperty property,
      Map<FilterType, bool> checkMap});

  $SearchFilterPropertyCopyWith<$Res> get property;
}

/// @nodoc
class _$FriendFilteringStateCopyWithImpl<$Res>
    implements $FriendFilteringStateCopyWith<$Res> {
  _$FriendFilteringStateCopyWithImpl(this._value, this._then);

  final FriendFilteringState _value;
  // ignore: unused_field
  final $Res Function(FriendFilteringState) _then;

  @override
  $Res call({
    Object? userStatus = freezed,
    Object? property = freezed,
    Object? checkMap = freezed,
  }) {
    return _then(_value.copyWith(
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      property: property == freezed
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as SearchFilterProperty,
      checkMap: checkMap == freezed
          ? _value.checkMap
          : checkMap // ignore: cast_nullable_to_non_nullable
              as Map<FilterType, bool>,
    ));
  }

  @override
  $SearchFilterPropertyCopyWith<$Res> get property {
    return $SearchFilterPropertyCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value));
    });
  }
}

/// @nodoc
abstract class _$FriendFilteringStateCopyWith<$Res>
    implements $FriendFilteringStateCopyWith<$Res> {
  factory _$FriendFilteringStateCopyWith(_FriendFilteringState value,
          $Res Function(_FriendFilteringState) then) =
      __$FriendFilteringStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserStatus userStatus,
      SearchFilterProperty property,
      Map<FilterType, bool> checkMap});

  @override
  $SearchFilterPropertyCopyWith<$Res> get property;
}

/// @nodoc
class __$FriendFilteringStateCopyWithImpl<$Res>
    extends _$FriendFilteringStateCopyWithImpl<$Res>
    implements _$FriendFilteringStateCopyWith<$Res> {
  __$FriendFilteringStateCopyWithImpl(
      _FriendFilteringState _value, $Res Function(_FriendFilteringState) _then)
      : super(_value, (v) => _then(v as _FriendFilteringState));

  @override
  _FriendFilteringState get _value => super._value as _FriendFilteringState;

  @override
  $Res call({
    Object? userStatus = freezed,
    Object? property = freezed,
    Object? checkMap = freezed,
  }) {
    return _then(_FriendFilteringState(
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      property: property == freezed
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as SearchFilterProperty,
      checkMap: checkMap == freezed
          ? _value.checkMap
          : checkMap // ignore: cast_nullable_to_non_nullable
              as Map<FilterType, bool>,
    ));
  }
}

/// @nodoc

class _$_FriendFilteringState extends _FriendFilteringState {
  const _$_FriendFilteringState(
      {this.userStatus = UserStatus.osato,
      this.property = const SearchFilterProperty(),
      this.checkMap = const <FilterType, bool>{}})
      : super._();

  @JsonKey(defaultValue: UserStatus.osato)
  @override
  final UserStatus userStatus;
  @JsonKey(defaultValue: const SearchFilterProperty())
  @override
  final SearchFilterProperty property;
  @JsonKey(defaultValue: const <FilterType, bool>{})
  @override

  /// 検索画面でチェックボックスがチェックされているかどうか（ポイントが不要な検索項目の場合は true）
  final Map<FilterType, bool> checkMap;

  @override
  String toString() {
    return 'FriendFilteringState(userStatus: $userStatus, property: $property, checkMap: $checkMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FriendFilteringState &&
            (identical(other.userStatus, userStatus) ||
                const DeepCollectionEquality()
                    .equals(other.userStatus, userStatus)) &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)) &&
            (identical(other.checkMap, checkMap) ||
                const DeepCollectionEquality()
                    .equals(other.checkMap, checkMap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userStatus) ^
      const DeepCollectionEquality().hash(property) ^
      const DeepCollectionEquality().hash(checkMap);

  @JsonKey(ignore: true)
  @override
  _$FriendFilteringStateCopyWith<_FriendFilteringState> get copyWith =>
      __$FriendFilteringStateCopyWithImpl<_FriendFilteringState>(
          this, _$identity);
}

abstract class _FriendFilteringState extends FriendFilteringState {
  const factory _FriendFilteringState(
      {UserStatus userStatus,
      SearchFilterProperty property,
      Map<FilterType, bool> checkMap}) = _$_FriendFilteringState;
  const _FriendFilteringState._() : super._();

  @override
  UserStatus get userStatus => throw _privateConstructorUsedError;
  @override
  SearchFilterProperty get property => throw _privateConstructorUsedError;
  @override

  /// 検索画面でチェックボックスがチェックされているかどうか（ポイントが不要な検索項目の場合は true）
  Map<FilterType, bool> get checkMap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FriendFilteringStateCopyWith<_FriendFilteringState> get copyWith =>
      throw _privateConstructorUsedError;
}

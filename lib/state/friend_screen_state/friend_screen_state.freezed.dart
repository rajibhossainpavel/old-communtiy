// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'friend_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FriendScreenStateTearOff {
  const _$FriendScreenStateTearOff();

  _FriendScreenState call(
      {List<UserInformation> users = const <UserInformation>[],
      bool isLastPage = false,
      int currentPage = 1,
      SearchFilterProperty searchFilterProperty = const SearchFilterProperty(),
      bool isLoading = false}) {
    return _FriendScreenState(
      users: users,
      isLastPage: isLastPage,
      currentPage: currentPage,
      searchFilterProperty: searchFilterProperty,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $FriendScreenState = _$FriendScreenStateTearOff();

/// @nodoc
mixin _$FriendScreenState {
  List<UserInformation> get users => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  SearchFilterProperty get searchFilterProperty =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendScreenStateCopyWith<FriendScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendScreenStateCopyWith<$Res> {
  factory $FriendScreenStateCopyWith(
          FriendScreenState value, $Res Function(FriendScreenState) then) =
      _$FriendScreenStateCopyWithImpl<$Res>;
  $Res call(
      {List<UserInformation> users,
      bool isLastPage,
      int currentPage,
      SearchFilterProperty searchFilterProperty,
      bool isLoading});

  $SearchFilterPropertyCopyWith<$Res> get searchFilterProperty;
}

/// @nodoc
class _$FriendScreenStateCopyWithImpl<$Res>
    implements $FriendScreenStateCopyWith<$Res> {
  _$FriendScreenStateCopyWithImpl(this._value, this._then);

  final FriendScreenState _value;
  // ignore: unused_field
  final $Res Function(FriendScreenState) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? isLastPage = freezed,
    Object? currentPage = freezed,
    Object? searchFilterProperty = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserInformation>,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      searchFilterProperty: searchFilterProperty == freezed
          ? _value.searchFilterProperty
          : searchFilterProperty // ignore: cast_nullable_to_non_nullable
              as SearchFilterProperty,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $SearchFilterPropertyCopyWith<$Res> get searchFilterProperty {
    return $SearchFilterPropertyCopyWith<$Res>(_value.searchFilterProperty,
        (value) {
      return _then(_value.copyWith(searchFilterProperty: value));
    });
  }
}

/// @nodoc
abstract class _$FriendScreenStateCopyWith<$Res>
    implements $FriendScreenStateCopyWith<$Res> {
  factory _$FriendScreenStateCopyWith(
          _FriendScreenState value, $Res Function(_FriendScreenState) then) =
      __$FriendScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<UserInformation> users,
      bool isLastPage,
      int currentPage,
      SearchFilterProperty searchFilterProperty,
      bool isLoading});

  @override
  $SearchFilterPropertyCopyWith<$Res> get searchFilterProperty;
}

/// @nodoc
class __$FriendScreenStateCopyWithImpl<$Res>
    extends _$FriendScreenStateCopyWithImpl<$Res>
    implements _$FriendScreenStateCopyWith<$Res> {
  __$FriendScreenStateCopyWithImpl(
      _FriendScreenState _value, $Res Function(_FriendScreenState) _then)
      : super(_value, (v) => _then(v as _FriendScreenState));

  @override
  _FriendScreenState get _value => super._value as _FriendScreenState;

  @override
  $Res call({
    Object? users = freezed,
    Object? isLastPage = freezed,
    Object? currentPage = freezed,
    Object? searchFilterProperty = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_FriendScreenState(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserInformation>,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      searchFilterProperty: searchFilterProperty == freezed
          ? _value.searchFilterProperty
          : searchFilterProperty // ignore: cast_nullable_to_non_nullable
              as SearchFilterProperty,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FriendScreenState extends _FriendScreenState {
  const _$_FriendScreenState(
      {this.users = const <UserInformation>[],
      this.isLastPage = false,
      this.currentPage = 1,
      this.searchFilterProperty = const SearchFilterProperty(),
      this.isLoading = false})
      : super._();

  @JsonKey(defaultValue: const <UserInformation>[])
  @override
  final List<UserInformation> users;
  @JsonKey(defaultValue: false)
  @override
  final bool isLastPage;
  @JsonKey(defaultValue: 1)
  @override
  final int currentPage;
  @JsonKey(defaultValue: const SearchFilterProperty())
  @override
  final SearchFilterProperty searchFilterProperty;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FriendScreenState(users: $users, isLastPage: $isLastPage, currentPage: $currentPage, searchFilterProperty: $searchFilterProperty, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FriendScreenState &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.searchFilterProperty, searchFilterProperty) ||
                const DeepCollectionEquality().equals(
                    other.searchFilterProperty, searchFilterProperty)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(isLastPage) ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(searchFilterProperty) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$FriendScreenStateCopyWith<_FriendScreenState> get copyWith =>
      __$FriendScreenStateCopyWithImpl<_FriendScreenState>(this, _$identity);
}

abstract class _FriendScreenState extends FriendScreenState {
  const factory _FriendScreenState(
      {List<UserInformation> users,
      bool isLastPage,
      int currentPage,
      SearchFilterProperty searchFilterProperty,
      bool isLoading}) = _$_FriendScreenState;
  const _FriendScreenState._() : super._();

  @override
  List<UserInformation> get users => throw _privateConstructorUsedError;
  @override
  bool get isLastPage => throw _privateConstructorUsedError;
  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  SearchFilterProperty get searchFilterProperty =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FriendScreenStateCopyWith<_FriendScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

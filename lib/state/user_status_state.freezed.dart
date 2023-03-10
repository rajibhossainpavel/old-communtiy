// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStatusStateTearOff {
  const _$UserStatusStateTearOff();

  _UserStatusState call(
      {String nickName = '',
      bool isLoading = false,
      UserStatus currentUserStatus = UserStatus.osato,
      List<ProductDetails> subscriptionProducts = const <ProductDetails>[]}) {
    return _UserStatusState(
      nickName: nickName,
      isLoading: isLoading,
      currentUserStatus: currentUserStatus,
      subscriptionProducts: subscriptionProducts,
    );
  }
}

/// @nodoc
const $UserStatusState = _$UserStatusStateTearOff();

/// @nodoc
mixin _$UserStatusState {
  String get nickName => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  UserStatus get currentUserStatus => throw _privateConstructorUsedError;
  List<ProductDetails> get subscriptionProducts =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStatusStateCopyWith<UserStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatusStateCopyWith<$Res> {
  factory $UserStatusStateCopyWith(
          UserStatusState value, $Res Function(UserStatusState) then) =
      _$UserStatusStateCopyWithImpl<$Res>;
  $Res call(
      {String nickName,
      bool isLoading,
      UserStatus currentUserStatus,
      List<ProductDetails> subscriptionProducts});
}

/// @nodoc
class _$UserStatusStateCopyWithImpl<$Res>
    implements $UserStatusStateCopyWith<$Res> {
  _$UserStatusStateCopyWithImpl(this._value, this._then);

  final UserStatusState _value;
  // ignore: unused_field
  final $Res Function(UserStatusState) _then;

  @override
  $Res call({
    Object? nickName = freezed,
    Object? isLoading = freezed,
    Object? currentUserStatus = freezed,
    Object? subscriptionProducts = freezed,
  }) {
    return _then(_value.copyWith(
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUserStatus: currentUserStatus == freezed
          ? _value.currentUserStatus
          : currentUserStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      subscriptionProducts: subscriptionProducts == freezed
          ? _value.subscriptionProducts
          : subscriptionProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDetails>,
    ));
  }
}

/// @nodoc
abstract class _$UserStatusStateCopyWith<$Res>
    implements $UserStatusStateCopyWith<$Res> {
  factory _$UserStatusStateCopyWith(
          _UserStatusState value, $Res Function(_UserStatusState) then) =
      __$UserStatusStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nickName,
      bool isLoading,
      UserStatus currentUserStatus,
      List<ProductDetails> subscriptionProducts});
}

/// @nodoc
class __$UserStatusStateCopyWithImpl<$Res>
    extends _$UserStatusStateCopyWithImpl<$Res>
    implements _$UserStatusStateCopyWith<$Res> {
  __$UserStatusStateCopyWithImpl(
      _UserStatusState _value, $Res Function(_UserStatusState) _then)
      : super(_value, (v) => _then(v as _UserStatusState));

  @override
  _UserStatusState get _value => super._value as _UserStatusState;

  @override
  $Res call({
    Object? nickName = freezed,
    Object? isLoading = freezed,
    Object? currentUserStatus = freezed,
    Object? subscriptionProducts = freezed,
  }) {
    return _then(_UserStatusState(
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUserStatus: currentUserStatus == freezed
          ? _value.currentUserStatus
          : currentUserStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      subscriptionProducts: subscriptionProducts == freezed
          ? _value.subscriptionProducts
          : subscriptionProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDetails>,
    ));
  }
}

/// @nodoc

class _$_UserStatusState extends _UserStatusState {
  const _$_UserStatusState(
      {this.nickName = '',
      this.isLoading = false,
      this.currentUserStatus = UserStatus.osato,
      this.subscriptionProducts = const <ProductDetails>[]})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String nickName;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: UserStatus.osato)
  @override
  final UserStatus currentUserStatus;
  @JsonKey(defaultValue: const <ProductDetails>[])
  @override
  final List<ProductDetails> subscriptionProducts;

  @override
  String toString() {
    return 'UserStatusState(nickName: $nickName, isLoading: $isLoading, currentUserStatus: $currentUserStatus, subscriptionProducts: $subscriptionProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserStatusState &&
            (identical(other.nickName, nickName) ||
                const DeepCollectionEquality()
                    .equals(other.nickName, nickName)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.currentUserStatus, currentUserStatus) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserStatus, currentUserStatus)) &&
            (identical(other.subscriptionProducts, subscriptionProducts) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionProducts, subscriptionProducts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nickName) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(currentUserStatus) ^
      const DeepCollectionEquality().hash(subscriptionProducts);

  @JsonKey(ignore: true)
  @override
  _$UserStatusStateCopyWith<_UserStatusState> get copyWith =>
      __$UserStatusStateCopyWithImpl<_UserStatusState>(this, _$identity);
}

abstract class _UserStatusState extends UserStatusState {
  const factory _UserStatusState(
      {String nickName,
      bool isLoading,
      UserStatus currentUserStatus,
      List<ProductDetails> subscriptionProducts}) = _$_UserStatusState;
  const _UserStatusState._() : super._();

  @override
  String get nickName => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  UserStatus get currentUserStatus => throw _privateConstructorUsedError;
  @override
  List<ProductDetails> get subscriptionProducts =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserStatusStateCopyWith<_UserStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'point_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PointHistoryStateTearOff {
  const _$PointHistoryStateTearOff();

  _PointHistoryState call(
      {List<Transaction> transactions = const <Transaction>[],
      List<Transaction> nextTransactions = const <Transaction>[],
      int currentPage = 0}) {
    return _PointHistoryState(
      transactions: transactions,
      nextTransactions: nextTransactions,
      currentPage: currentPage,
    );
  }
}

/// @nodoc
const $PointHistoryState = _$PointHistoryStateTearOff();

/// @nodoc
mixin _$PointHistoryState {
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  List<Transaction> get nextTransactions => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PointHistoryStateCopyWith<PointHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointHistoryStateCopyWith<$Res> {
  factory $PointHistoryStateCopyWith(
          PointHistoryState value, $Res Function(PointHistoryState) then) =
      _$PointHistoryStateCopyWithImpl<$Res>;
  $Res call(
      {List<Transaction> transactions,
      List<Transaction> nextTransactions,
      int currentPage});
}

/// @nodoc
class _$PointHistoryStateCopyWithImpl<$Res>
    implements $PointHistoryStateCopyWith<$Res> {
  _$PointHistoryStateCopyWithImpl(this._value, this._then);

  final PointHistoryState _value;
  // ignore: unused_field
  final $Res Function(PointHistoryState) _then;

  @override
  $Res call({
    Object? transactions = freezed,
    Object? nextTransactions = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      nextTransactions: nextTransactions == freezed
          ? _value.nextTransactions
          : nextTransactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PointHistoryStateCopyWith<$Res>
    implements $PointHistoryStateCopyWith<$Res> {
  factory _$PointHistoryStateCopyWith(
          _PointHistoryState value, $Res Function(_PointHistoryState) then) =
      __$PointHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Transaction> transactions,
      List<Transaction> nextTransactions,
      int currentPage});
}

/// @nodoc
class __$PointHistoryStateCopyWithImpl<$Res>
    extends _$PointHistoryStateCopyWithImpl<$Res>
    implements _$PointHistoryStateCopyWith<$Res> {
  __$PointHistoryStateCopyWithImpl(
      _PointHistoryState _value, $Res Function(_PointHistoryState) _then)
      : super(_value, (v) => _then(v as _PointHistoryState));

  @override
  _PointHistoryState get _value => super._value as _PointHistoryState;

  @override
  $Res call({
    Object? transactions = freezed,
    Object? nextTransactions = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_PointHistoryState(
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      nextTransactions: nextTransactions == freezed
          ? _value.nextTransactions
          : nextTransactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PointHistoryState extends _PointHistoryState {
  const _$_PointHistoryState(
      {this.transactions = const <Transaction>[],
      this.nextTransactions = const <Transaction>[],
      this.currentPage = 0})
      : super._();

  @JsonKey(defaultValue: const <Transaction>[])
  @override
  final List<Transaction> transactions;
  @JsonKey(defaultValue: const <Transaction>[])
  @override
  final List<Transaction> nextTransactions;
  @JsonKey(defaultValue: 0)
  @override
  final int currentPage;

  @override
  String toString() {
    return 'PointHistoryState(transactions: $transactions, nextTransactions: $nextTransactions, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointHistoryState &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.nextTransactions, nextTransactions) ||
                const DeepCollectionEquality()
                    .equals(other.nextTransactions, nextTransactions)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(nextTransactions) ^
      const DeepCollectionEquality().hash(currentPage);

  @JsonKey(ignore: true)
  @override
  _$PointHistoryStateCopyWith<_PointHistoryState> get copyWith =>
      __$PointHistoryStateCopyWithImpl<_PointHistoryState>(this, _$identity);
}

abstract class _PointHistoryState extends PointHistoryState {
  const factory _PointHistoryState(
      {List<Transaction> transactions,
      List<Transaction> nextTransactions,
      int currentPage}) = _$_PointHistoryState;
  const _PointHistoryState._() : super._();

  @override
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @override
  List<Transaction> get nextTransactions => throw _privateConstructorUsedError;
  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointHistoryStateCopyWith<_PointHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

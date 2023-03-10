// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {String createdAt = '',
      String kind = '',
      String kindName = '',
      int delta = 0}) {
    return _Transaction(
      createdAt: createdAt,
      kind: kind,
      kindName: kindName,
      delta: delta,
    );
  }

  Transaction fromJson(Map<String, Object> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  String get createdAt => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  String get kindName => throw _privateConstructorUsedError;
  int get delta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call({String createdAt, String kind, String kindName, int delta});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? kind = freezed,
    Object? kindName = freezed,
    Object? delta = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      kindName: kindName == freezed
          ? _value.kindName
          : kindName // ignore: cast_nullable_to_non_nullable
              as String,
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call({String createdAt, String kind, String kindName, int delta});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? kind = freezed,
    Object? kindName = freezed,
    Object? delta = freezed,
  }) {
    return _then(_Transaction(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      kindName: kindName == freezed
          ? _value.kindName
          : kindName // ignore: cast_nullable_to_non_nullable
              as String,
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction extends _Transaction {
  const _$_Transaction(
      {this.createdAt = '', this.kind = '', this.kindName = '', this.delta = 0})
      : super._();

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String createdAt;
  @JsonKey(defaultValue: '')
  @override
  final String kind;
  @JsonKey(defaultValue: '')
  @override
  final String kindName;
  @JsonKey(defaultValue: 0)
  @override
  final int delta;

  @override
  String toString() {
    return 'Transaction(createdAt: $createdAt, kind: $kind, kindName: $kindName, delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.kindName, kindName) ||
                const DeepCollectionEquality()
                    .equals(other.kindName, kindName)) &&
            (identical(other.delta, delta) ||
                const DeepCollectionEquality().equals(other.delta, delta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(kindName) ^
      const DeepCollectionEquality().hash(delta);

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionToJson(this);
  }
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {String createdAt,
      String kind,
      String kindName,
      int delta}) = _$_Transaction;
  const _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get kind => throw _privateConstructorUsedError;
  @override
  String get kindName => throw _privateConstructorUsedError;
  @override
  int get delta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

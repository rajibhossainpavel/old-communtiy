// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupUpdateStateTearOff {
  const _$GroupUpdateStateTearOff();

  _GroupUpdateState call(
      {String selectedImage = '',
      GroupCategory? category,
      bool isLoading = false}) {
    return _GroupUpdateState(
      selectedImage: selectedImage,
      category: category,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $GroupUpdateState = _$GroupUpdateStateTearOff();

/// @nodoc
mixin _$GroupUpdateState {
  String get selectedImage => throw _privateConstructorUsedError;
  GroupCategory? get category => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupUpdateStateCopyWith<GroupUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupUpdateStateCopyWith<$Res> {
  factory $GroupUpdateStateCopyWith(
          GroupUpdateState value, $Res Function(GroupUpdateState) then) =
      _$GroupUpdateStateCopyWithImpl<$Res>;
  $Res call({String selectedImage, GroupCategory? category, bool isLoading});

  $GroupCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$GroupUpdateStateCopyWithImpl<$Res>
    implements $GroupUpdateStateCopyWith<$Res> {
  _$GroupUpdateStateCopyWithImpl(this._value, this._then);

  final GroupUpdateState _value;
  // ignore: unused_field
  final $Res Function(GroupUpdateState) _then;

  @override
  $Res call({
    Object? selectedImage = freezed,
    Object? category = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      selectedImage: selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroupCategory?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $GroupCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $GroupCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$GroupUpdateStateCopyWith<$Res>
    implements $GroupUpdateStateCopyWith<$Res> {
  factory _$GroupUpdateStateCopyWith(
          _GroupUpdateState value, $Res Function(_GroupUpdateState) then) =
      __$GroupUpdateStateCopyWithImpl<$Res>;
  @override
  $Res call({String selectedImage, GroupCategory? category, bool isLoading});

  @override
  $GroupCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$GroupUpdateStateCopyWithImpl<$Res>
    extends _$GroupUpdateStateCopyWithImpl<$Res>
    implements _$GroupUpdateStateCopyWith<$Res> {
  __$GroupUpdateStateCopyWithImpl(
      _GroupUpdateState _value, $Res Function(_GroupUpdateState) _then)
      : super(_value, (v) => _then(v as _GroupUpdateState));

  @override
  _GroupUpdateState get _value => super._value as _GroupUpdateState;

  @override
  $Res call({
    Object? selectedImage = freezed,
    Object? category = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_GroupUpdateState(
      selectedImage: selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as GroupCategory?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GroupUpdateState extends _GroupUpdateState {
  const _$_GroupUpdateState(
      {this.selectedImage = '', this.category, this.isLoading = false})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String selectedImage;
  @override
  final GroupCategory? category;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'GroupUpdateState(selectedImage: $selectedImage, category: $category, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupUpdateState &&
            (identical(other.selectedImage, selectedImage) ||
                const DeepCollectionEquality()
                    .equals(other.selectedImage, selectedImage)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedImage) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$GroupUpdateStateCopyWith<_GroupUpdateState> get copyWith =>
      __$GroupUpdateStateCopyWithImpl<_GroupUpdateState>(this, _$identity);
}

abstract class _GroupUpdateState extends GroupUpdateState {
  const factory _GroupUpdateState(
      {String selectedImage,
      GroupCategory? category,
      bool isLoading}) = _$_GroupUpdateState;
  const _GroupUpdateState._() : super._();

  @override
  String get selectedImage => throw _privateConstructorUsedError;
  @override
  GroupCategory? get category => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupUpdateStateCopyWith<_GroupUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

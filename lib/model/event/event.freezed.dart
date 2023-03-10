// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
class _$EventTearOff {
  const _$EventTearOff();

  _Event call(
      {String eventID = '',
      String title = '',
      String subTitle = '',
      int point = 0}) {
    return _Event(
      eventID: eventID,
      title: title,
      subTitle: subTitle,
      point: point,
    );
  }

  Event fromJson(Map<String, Object> json) {
    return Event.fromJson(json);
  }
}

/// @nodoc
const $Event = _$EventTearOff();

/// @nodoc
mixin _$Event {
  String get eventID => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
  $Res call({String eventID, String title, String subTitle, int point});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

  @override
  $Res call({
    Object? eventID = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? point = freezed,
  }) {
    return _then(_value.copyWith(
      eventID: eventID == freezed
          ? _value.eventID
          : eventID // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) then) =
      __$EventCopyWithImpl<$Res>;
  @override
  $Res call({String eventID, String title, String subTitle, int point});
}

/// @nodoc
class __$EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(_Event _value, $Res Function(_Event) _then)
      : super(_value, (v) => _then(v as _Event));

  @override
  _Event get _value => super._value as _Event;

  @override
  $Res call({
    Object? eventID = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? point = freezed,
  }) {
    return _then(_Event(
      eventID: eventID == freezed
          ? _value.eventID
          : eventID // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Event extends _Event {
  const _$_Event(
      {this.eventID = '', this.title = '', this.subTitle = '', this.point = 0})
      : super._();

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$_$_EventFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String eventID;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String subTitle;
  @JsonKey(defaultValue: 0)
  @override
  final int point;

  @override
  String toString() {
    return 'Event(eventID: $eventID, title: $title, subTitle: $subTitle, point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Event &&
            (identical(other.eventID, eventID) ||
                const DeepCollectionEquality()
                    .equals(other.eventID, eventID)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subTitle, subTitle) ||
                const DeepCollectionEquality()
                    .equals(other.subTitle, subTitle)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eventID) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subTitle) ^
      const DeepCollectionEquality().hash(point);

  @JsonKey(ignore: true)
  @override
  _$EventCopyWith<_Event> get copyWith =>
      __$EventCopyWithImpl<_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventToJson(this);
  }
}

abstract class _Event extends Event {
  const factory _Event(
      {String eventID, String title, String subTitle, int point}) = _$_Event;
  const _Event._() : super._();

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  String get eventID => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subTitle => throw _privateConstructorUsedError;
  @override
  int get point => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventCopyWith<_Event> get copyWith => throw _privateConstructorUsedError;
}

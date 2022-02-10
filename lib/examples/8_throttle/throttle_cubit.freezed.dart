// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'throttle_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThrottleStateTearOff {
  const _$ThrottleStateTearOff();

  _ThrottleState call(
      {int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> emittedEvents = const [],
      Iterable<MarbleWithTimestamp> throttledEvents = const []}) {
    return _ThrottleState(
      initialTimestamp: initialTimestamp,
      emittedEvents: emittedEvents,
      throttledEvents: throttledEvents,
    );
  }
}

/// @nodoc
const $ThrottleState = _$ThrottleStateTearOff();

/// @nodoc
mixin _$ThrottleState {
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emittedEvents =>
      throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get throttledEvents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThrottleStateCopyWith<ThrottleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThrottleStateCopyWith<$Res> {
  factory $ThrottleStateCopyWith(
          ThrottleState value, $Res Function(ThrottleState) then) =
      _$ThrottleStateCopyWithImpl<$Res>;
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> throttledEvents});
}

/// @nodoc
class _$ThrottleStateCopyWithImpl<$Res>
    implements $ThrottleStateCopyWith<$Res> {
  _$ThrottleStateCopyWithImpl(this._value, this._then);

  final ThrottleState _value;
  // ignore: unused_field
  final $Res Function(ThrottleState) _then;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? throttledEvents = freezed,
  }) {
    return _then(_value.copyWith(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEvents: emittedEvents == freezed
          ? _value.emittedEvents
          : emittedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      throttledEvents: throttledEvents == freezed
          ? _value.throttledEvents
          : throttledEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc
abstract class _$ThrottleStateCopyWith<$Res>
    implements $ThrottleStateCopyWith<$Res> {
  factory _$ThrottleStateCopyWith(
          _ThrottleState value, $Res Function(_ThrottleState) then) =
      __$ThrottleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> throttledEvents});
}

/// @nodoc
class __$ThrottleStateCopyWithImpl<$Res>
    extends _$ThrottleStateCopyWithImpl<$Res>
    implements _$ThrottleStateCopyWith<$Res> {
  __$ThrottleStateCopyWithImpl(
      _ThrottleState _value, $Res Function(_ThrottleState) _then)
      : super(_value, (v) => _then(v as _ThrottleState));

  @override
  _ThrottleState get _value => super._value as _ThrottleState;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? throttledEvents = freezed,
  }) {
    return _then(_ThrottleState(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEvents: emittedEvents == freezed
          ? _value.emittedEvents
          : emittedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      throttledEvents: throttledEvents == freezed
          ? _value.throttledEvents
          : throttledEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_ThrottleState implements _ThrottleState {
  const _$_ThrottleState(
      {this.initialTimestamp = 0,
      this.emittedEvents = const [],
      this.throttledEvents = const []});

  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emittedEvents;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> throttledEvents;

  @override
  String toString() {
    return 'ThrottleState(initialTimestamp: $initialTimestamp, emittedEvents: $emittedEvents, throttledEvents: $throttledEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThrottleState &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.emittedEvents, emittedEvents) &&
            const DeepCollectionEquality()
                .equals(other.throttledEvents, throttledEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(emittedEvents),
      const DeepCollectionEquality().hash(throttledEvents));

  @JsonKey(ignore: true)
  @override
  _$ThrottleStateCopyWith<_ThrottleState> get copyWith =>
      __$ThrottleStateCopyWithImpl<_ThrottleState>(this, _$identity);
}

abstract class _ThrottleState implements ThrottleState {
  const factory _ThrottleState(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> throttledEvents}) = _$_ThrottleState;

  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get emittedEvents;
  @override
  Iterable<MarbleWithTimestamp> get throttledEvents;
  @override
  @JsonKey(ignore: true)
  _$ThrottleStateCopyWith<_ThrottleState> get copyWith =>
      throw _privateConstructorUsedError;
}

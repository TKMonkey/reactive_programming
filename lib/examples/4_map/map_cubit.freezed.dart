// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapState call(
      {int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> emittedEvents = const [],
      Iterable<MarbleWithTimestamp> mappedEvents = const []}) {
    return _MapState(
      initialTimestamp: initialTimestamp,
      emittedEvents: emittedEvents,
      mappedEvents: mappedEvents,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emittedEvents =>
      throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get mappedEvents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> mappedEvents});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? mappedEvents = freezed,
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
      mappedEvents: mappedEvents == freezed
          ? _value.mappedEvents
          : mappedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc
abstract class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) then) =
      __$MapStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> mappedEvents});
}

/// @nodoc
class __$MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(_MapState _value, $Res Function(_MapState) _then)
      : super(_value, (v) => _then(v as _MapState));

  @override
  _MapState get _value => super._value as _MapState;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? mappedEvents = freezed,
  }) {
    return _then(_MapState(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEvents: emittedEvents == freezed
          ? _value.emittedEvents
          : emittedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      mappedEvents: mappedEvents == freezed
          ? _value.mappedEvents
          : mappedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  const _$_MapState(
      {this.initialTimestamp = 0,
      this.emittedEvents = const [],
      this.mappedEvents = const []});

  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emittedEvents;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> mappedEvents;

  @override
  String toString() {
    return 'MapState(initialTimestamp: $initialTimestamp, emittedEvents: $emittedEvents, mappedEvents: $mappedEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapState &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.emittedEvents, emittedEvents) &&
            const DeepCollectionEquality()
                .equals(other.mappedEvents, mappedEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(emittedEvents),
      const DeepCollectionEquality().hash(mappedEvents));

  @JsonKey(ignore: true)
  @override
  _$MapStateCopyWith<_MapState> get copyWith =>
      __$MapStateCopyWithImpl<_MapState>(this, _$identity);
}

abstract class _MapState implements MapState {
  const factory _MapState(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> mappedEvents}) = _$_MapState;

  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get emittedEvents;
  @override
  Iterable<MarbleWithTimestamp> get mappedEvents;
  @override
  @JsonKey(ignore: true)
  _$MapStateCopyWith<_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

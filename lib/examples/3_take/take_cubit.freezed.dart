// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'take_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TakeStateTearOff {
  const _$TakeStateTearOff();

  _TakeState call(
      {int takeCount = 0,
      int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> emittedEvents = const [],
      Iterable<MarbleWithTimestamp> resultEvents = const []}) {
    return _TakeState(
      takeCount: takeCount,
      initialTimestamp: initialTimestamp,
      emittedEvents: emittedEvents,
      resultEvents: resultEvents,
    );
  }
}

/// @nodoc
const $TakeState = _$TakeStateTearOff();

/// @nodoc
mixin _$TakeState {
  int get takeCount => throw _privateConstructorUsedError;
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emittedEvents =>
      throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get resultEvents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TakeStateCopyWith<TakeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakeStateCopyWith<$Res> {
  factory $TakeStateCopyWith(TakeState value, $Res Function(TakeState) then) =
      _$TakeStateCopyWithImpl<$Res>;
  $Res call(
      {int takeCount,
      int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> resultEvents});
}

/// @nodoc
class _$TakeStateCopyWithImpl<$Res> implements $TakeStateCopyWith<$Res> {
  _$TakeStateCopyWithImpl(this._value, this._then);

  final TakeState _value;
  // ignore: unused_field
  final $Res Function(TakeState) _then;

  @override
  $Res call({
    Object? takeCount = freezed,
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? resultEvents = freezed,
  }) {
    return _then(_value.copyWith(
      takeCount: takeCount == freezed
          ? _value.takeCount
          : takeCount // ignore: cast_nullable_to_non_nullable
              as int,
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEvents: emittedEvents == freezed
          ? _value.emittedEvents
          : emittedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      resultEvents: resultEvents == freezed
          ? _value.resultEvents
          : resultEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc
abstract class _$TakeStateCopyWith<$Res> implements $TakeStateCopyWith<$Res> {
  factory _$TakeStateCopyWith(
          _TakeState value, $Res Function(_TakeState) then) =
      __$TakeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int takeCount,
      int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> resultEvents});
}

/// @nodoc
class __$TakeStateCopyWithImpl<$Res> extends _$TakeStateCopyWithImpl<$Res>
    implements _$TakeStateCopyWith<$Res> {
  __$TakeStateCopyWithImpl(_TakeState _value, $Res Function(_TakeState) _then)
      : super(_value, (v) => _then(v as _TakeState));

  @override
  _TakeState get _value => super._value as _TakeState;

  @override
  $Res call({
    Object? takeCount = freezed,
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? resultEvents = freezed,
  }) {
    return _then(_TakeState(
      takeCount: takeCount == freezed
          ? _value.takeCount
          : takeCount // ignore: cast_nullable_to_non_nullable
              as int,
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEvents: emittedEvents == freezed
          ? _value.emittedEvents
          : emittedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      resultEvents: resultEvents == freezed
          ? _value.resultEvents
          : resultEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_TakeState implements _TakeState {
  const _$_TakeState(
      {this.takeCount = 0,
      this.initialTimestamp = 0,
      this.emittedEvents = const [],
      this.resultEvents = const []});

  @JsonKey()
  @override
  final int takeCount;
  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emittedEvents;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> resultEvents;

  @override
  String toString() {
    return 'TakeState(takeCount: $takeCount, initialTimestamp: $initialTimestamp, emittedEvents: $emittedEvents, resultEvents: $resultEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TakeState &&
            const DeepCollectionEquality().equals(other.takeCount, takeCount) &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.emittedEvents, emittedEvents) &&
            const DeepCollectionEquality()
                .equals(other.resultEvents, resultEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(takeCount),
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(emittedEvents),
      const DeepCollectionEquality().hash(resultEvents));

  @JsonKey(ignore: true)
  @override
  _$TakeStateCopyWith<_TakeState> get copyWith =>
      __$TakeStateCopyWithImpl<_TakeState>(this, _$identity);
}

abstract class _TakeState implements TakeState {
  const factory _TakeState(
      {int takeCount,
      int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> resultEvents}) = _$_TakeState;

  @override
  int get takeCount;
  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get emittedEvents;
  @override
  Iterable<MarbleWithTimestamp> get resultEvents;
  @override
  @JsonKey(ignore: true)
  _$TakeStateCopyWith<_TakeState> get copyWith =>
      throw _privateConstructorUsedError;
}

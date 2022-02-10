// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'debounce_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DebounceStateTearOff {
  const _$DebounceStateTearOff();

  _DebounceState call(
      {int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> emittedEvents = const [],
      Iterable<MarbleWithTimestamp> debouncedEvents = const []}) {
    return _DebounceState(
      initialTimestamp: initialTimestamp,
      emittedEvents: emittedEvents,
      debouncedEvents: debouncedEvents,
    );
  }
}

/// @nodoc
const $DebounceState = _$DebounceStateTearOff();

/// @nodoc
mixin _$DebounceState {
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emittedEvents =>
      throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get debouncedEvents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebounceStateCopyWith<DebounceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebounceStateCopyWith<$Res> {
  factory $DebounceStateCopyWith(
          DebounceState value, $Res Function(DebounceState) then) =
      _$DebounceStateCopyWithImpl<$Res>;
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> debouncedEvents});
}

/// @nodoc
class _$DebounceStateCopyWithImpl<$Res>
    implements $DebounceStateCopyWith<$Res> {
  _$DebounceStateCopyWithImpl(this._value, this._then);

  final DebounceState _value;
  // ignore: unused_field
  final $Res Function(DebounceState) _then;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? debouncedEvents = freezed,
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
      debouncedEvents: debouncedEvents == freezed
          ? _value.debouncedEvents
          : debouncedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc
abstract class _$DebounceStateCopyWith<$Res>
    implements $DebounceStateCopyWith<$Res> {
  factory _$DebounceStateCopyWith(
          _DebounceState value, $Res Function(_DebounceState) then) =
      __$DebounceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> debouncedEvents});
}

/// @nodoc
class __$DebounceStateCopyWithImpl<$Res>
    extends _$DebounceStateCopyWithImpl<$Res>
    implements _$DebounceStateCopyWith<$Res> {
  __$DebounceStateCopyWithImpl(
      _DebounceState _value, $Res Function(_DebounceState) _then)
      : super(_value, (v) => _then(v as _DebounceState));

  @override
  _DebounceState get _value => super._value as _DebounceState;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? debouncedEvents = freezed,
  }) {
    return _then(_DebounceState(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEvents: emittedEvents == freezed
          ? _value.emittedEvents
          : emittedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      debouncedEvents: debouncedEvents == freezed
          ? _value.debouncedEvents
          : debouncedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_DebounceState implements _DebounceState {
  const _$_DebounceState(
      {this.initialTimestamp = 0,
      this.emittedEvents = const [],
      this.debouncedEvents = const []});

  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emittedEvents;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> debouncedEvents;

  @override
  String toString() {
    return 'DebounceState(initialTimestamp: $initialTimestamp, emittedEvents: $emittedEvents, debouncedEvents: $debouncedEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DebounceState &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.emittedEvents, emittedEvents) &&
            const DeepCollectionEquality()
                .equals(other.debouncedEvents, debouncedEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(emittedEvents),
      const DeepCollectionEquality().hash(debouncedEvents));

  @JsonKey(ignore: true)
  @override
  _$DebounceStateCopyWith<_DebounceState> get copyWith =>
      __$DebounceStateCopyWithImpl<_DebounceState>(this, _$identity);
}

abstract class _DebounceState implements DebounceState {
  const factory _DebounceState(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> debouncedEvents}) = _$_DebounceState;

  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get emittedEvents;
  @override
  Iterable<MarbleWithTimestamp> get debouncedEvents;
  @override
  @JsonKey(ignore: true)
  _$DebounceStateCopyWith<_DebounceState> get copyWith =>
      throw _privateConstructorUsedError;
}

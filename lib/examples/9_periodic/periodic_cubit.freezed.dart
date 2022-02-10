// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'periodic_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PeriodicStateTearOff {
  const _$PeriodicStateTearOff();

  _PeriodicState call(
      {int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> emittedEvents = const []}) {
    return _PeriodicState(
      initialTimestamp: initialTimestamp,
      emittedEvents: emittedEvents,
    );
  }
}

/// @nodoc
const $PeriodicState = _$PeriodicStateTearOff();

/// @nodoc
mixin _$PeriodicState {
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emittedEvents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeriodicStateCopyWith<PeriodicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodicStateCopyWith<$Res> {
  factory $PeriodicStateCopyWith(
          PeriodicState value, $Res Function(PeriodicState) then) =
      _$PeriodicStateCopyWithImpl<$Res>;
  $Res call(
      {int initialTimestamp, Iterable<MarbleWithTimestamp> emittedEvents});
}

/// @nodoc
class _$PeriodicStateCopyWithImpl<$Res>
    implements $PeriodicStateCopyWith<$Res> {
  _$PeriodicStateCopyWithImpl(this._value, this._then);

  final PeriodicState _value;
  // ignore: unused_field
  final $Res Function(PeriodicState) _then;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$PeriodicStateCopyWith<$Res>
    implements $PeriodicStateCopyWith<$Res> {
  factory _$PeriodicStateCopyWith(
          _PeriodicState value, $Res Function(_PeriodicState) then) =
      __$PeriodicStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int initialTimestamp, Iterable<MarbleWithTimestamp> emittedEvents});
}

/// @nodoc
class __$PeriodicStateCopyWithImpl<$Res>
    extends _$PeriodicStateCopyWithImpl<$Res>
    implements _$PeriodicStateCopyWith<$Res> {
  __$PeriodicStateCopyWithImpl(
      _PeriodicState _value, $Res Function(_PeriodicState) _then)
      : super(_value, (v) => _then(v as _PeriodicState));

  @override
  _PeriodicState get _value => super._value as _PeriodicState;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
  }) {
    return _then(_PeriodicState(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEvents: emittedEvents == freezed
          ? _value.emittedEvents
          : emittedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_PeriodicState implements _PeriodicState {
  const _$_PeriodicState(
      {this.initialTimestamp = 0, this.emittedEvents = const []});

  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emittedEvents;

  @override
  String toString() {
    return 'PeriodicState(initialTimestamp: $initialTimestamp, emittedEvents: $emittedEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PeriodicState &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.emittedEvents, emittedEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(emittedEvents));

  @JsonKey(ignore: true)
  @override
  _$PeriodicStateCopyWith<_PeriodicState> get copyWith =>
      __$PeriodicStateCopyWithImpl<_PeriodicState>(this, _$identity);
}

abstract class _PeriodicState implements PeriodicState {
  const factory _PeriodicState(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents}) = _$_PeriodicState;

  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get emittedEvents;
  @override
  @JsonKey(ignore: true)
  _$PeriodicStateCopyWith<_PeriodicState> get copyWith =>
      throw _privateConstructorUsedError;
}

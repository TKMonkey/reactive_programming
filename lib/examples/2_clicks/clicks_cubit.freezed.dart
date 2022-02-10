// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clicks_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClicksStateTearOff {
  const _$ClicksStateTearOff();

  _ClicksState call(
      {int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> emmitedEvents = const []}) {
    return _ClicksState(
      initialTimestamp: initialTimestamp,
      emmitedEvents: emmitedEvents,
    );
  }
}

/// @nodoc
const $ClicksState = _$ClicksStateTearOff();

/// @nodoc
mixin _$ClicksState {
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emmitedEvents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClicksStateCopyWith<ClicksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClicksStateCopyWith<$Res> {
  factory $ClicksStateCopyWith(
          ClicksState value, $Res Function(ClicksState) then) =
      _$ClicksStateCopyWithImpl<$Res>;
  $Res call(
      {int initialTimestamp, Iterable<MarbleWithTimestamp> emmitedEvents});
}

/// @nodoc
class _$ClicksStateCopyWithImpl<$Res> implements $ClicksStateCopyWith<$Res> {
  _$ClicksStateCopyWithImpl(this._value, this._then);

  final ClicksState _value;
  // ignore: unused_field
  final $Res Function(ClicksState) _then;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emmitedEvents = freezed,
  }) {
    return _then(_value.copyWith(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emmitedEvents: emmitedEvents == freezed
          ? _value.emmitedEvents
          : emmitedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc
abstract class _$ClicksStateCopyWith<$Res>
    implements $ClicksStateCopyWith<$Res> {
  factory _$ClicksStateCopyWith(
          _ClicksState value, $Res Function(_ClicksState) then) =
      __$ClicksStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int initialTimestamp, Iterable<MarbleWithTimestamp> emmitedEvents});
}

/// @nodoc
class __$ClicksStateCopyWithImpl<$Res> extends _$ClicksStateCopyWithImpl<$Res>
    implements _$ClicksStateCopyWith<$Res> {
  __$ClicksStateCopyWithImpl(
      _ClicksState _value, $Res Function(_ClicksState) _then)
      : super(_value, (v) => _then(v as _ClicksState));

  @override
  _ClicksState get _value => super._value as _ClicksState;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emmitedEvents = freezed,
  }) {
    return _then(_ClicksState(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emmitedEvents: emmitedEvents == freezed
          ? _value.emmitedEvents
          : emmitedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_ClicksState implements _ClicksState {
  const _$_ClicksState(
      {this.initialTimestamp = 0, this.emmitedEvents = const []});

  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emmitedEvents;

  @override
  String toString() {
    return 'ClicksState(initialTimestamp: $initialTimestamp, emmitedEvents: $emmitedEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClicksState &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.emmitedEvents, emmitedEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(emmitedEvents));

  @JsonKey(ignore: true)
  @override
  _$ClicksStateCopyWith<_ClicksState> get copyWith =>
      __$ClicksStateCopyWithImpl<_ClicksState>(this, _$identity);
}

abstract class _ClicksState implements ClicksState {
  const factory _ClicksState(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emmitedEvents}) = _$_ClicksState;

  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get emmitedEvents;
  @override
  @JsonKey(ignore: true)
  _$ClicksStateCopyWith<_ClicksState> get copyWith =>
      throw _privateConstructorUsedError;
}

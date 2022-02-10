// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'merge_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MergeStateTearOff {
  const _$MergeStateTearOff();

  _MergeState call(
      {int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> emittedEventsSource1 = const [],
      Iterable<MarbleWithTimestamp> emittedEventsSource2 = const [],
      Iterable<MarbleWithTimestamp> mergedEvents = const []}) {
    return _MergeState(
      initialTimestamp: initialTimestamp,
      emittedEventsSource1: emittedEventsSource1,
      emittedEventsSource2: emittedEventsSource2,
      mergedEvents: mergedEvents,
    );
  }
}

/// @nodoc
const $MergeState = _$MergeStateTearOff();

/// @nodoc
mixin _$MergeState {
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emittedEventsSource1 =>
      throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emittedEventsSource2 =>
      throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get mergedEvents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MergeStateCopyWith<MergeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergeStateCopyWith<$Res> {
  factory $MergeStateCopyWith(
          MergeState value, $Res Function(MergeState) then) =
      _$MergeStateCopyWithImpl<$Res>;
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEventsSource1,
      Iterable<MarbleWithTimestamp> emittedEventsSource2,
      Iterable<MarbleWithTimestamp> mergedEvents});
}

/// @nodoc
class _$MergeStateCopyWithImpl<$Res> implements $MergeStateCopyWith<$Res> {
  _$MergeStateCopyWithImpl(this._value, this._then);

  final MergeState _value;
  // ignore: unused_field
  final $Res Function(MergeState) _then;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEventsSource1 = freezed,
    Object? emittedEventsSource2 = freezed,
    Object? mergedEvents = freezed,
  }) {
    return _then(_value.copyWith(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEventsSource1: emittedEventsSource1 == freezed
          ? _value.emittedEventsSource1
          : emittedEventsSource1 // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      emittedEventsSource2: emittedEventsSource2 == freezed
          ? _value.emittedEventsSource2
          : emittedEventsSource2 // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      mergedEvents: mergedEvents == freezed
          ? _value.mergedEvents
          : mergedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc
abstract class _$MergeStateCopyWith<$Res> implements $MergeStateCopyWith<$Res> {
  factory _$MergeStateCopyWith(
          _MergeState value, $Res Function(_MergeState) then) =
      __$MergeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEventsSource1,
      Iterable<MarbleWithTimestamp> emittedEventsSource2,
      Iterable<MarbleWithTimestamp> mergedEvents});
}

/// @nodoc
class __$MergeStateCopyWithImpl<$Res> extends _$MergeStateCopyWithImpl<$Res>
    implements _$MergeStateCopyWith<$Res> {
  __$MergeStateCopyWithImpl(
      _MergeState _value, $Res Function(_MergeState) _then)
      : super(_value, (v) => _then(v as _MergeState));

  @override
  _MergeState get _value => super._value as _MergeState;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEventsSource1 = freezed,
    Object? emittedEventsSource2 = freezed,
    Object? mergedEvents = freezed,
  }) {
    return _then(_MergeState(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEventsSource1: emittedEventsSource1 == freezed
          ? _value.emittedEventsSource1
          : emittedEventsSource1 // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      emittedEventsSource2: emittedEventsSource2 == freezed
          ? _value.emittedEventsSource2
          : emittedEventsSource2 // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      mergedEvents: mergedEvents == freezed
          ? _value.mergedEvents
          : mergedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_MergeState implements _MergeState {
  const _$_MergeState(
      {this.initialTimestamp = 0,
      this.emittedEventsSource1 = const [],
      this.emittedEventsSource2 = const [],
      this.mergedEvents = const []});

  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emittedEventsSource1;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emittedEventsSource2;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> mergedEvents;

  @override
  String toString() {
    return 'MergeState(initialTimestamp: $initialTimestamp, emittedEventsSource1: $emittedEventsSource1, emittedEventsSource2: $emittedEventsSource2, mergedEvents: $mergedEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MergeState &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.emittedEventsSource1, emittedEventsSource1) &&
            const DeepCollectionEquality()
                .equals(other.emittedEventsSource2, emittedEventsSource2) &&
            const DeepCollectionEquality()
                .equals(other.mergedEvents, mergedEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(emittedEventsSource1),
      const DeepCollectionEquality().hash(emittedEventsSource2),
      const DeepCollectionEquality().hash(mergedEvents));

  @JsonKey(ignore: true)
  @override
  _$MergeStateCopyWith<_MergeState> get copyWith =>
      __$MergeStateCopyWithImpl<_MergeState>(this, _$identity);
}

abstract class _MergeState implements MergeState {
  const factory _MergeState(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEventsSource1,
      Iterable<MarbleWithTimestamp> emittedEventsSource2,
      Iterable<MarbleWithTimestamp> mergedEvents}) = _$_MergeState;

  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get emittedEventsSource1;
  @override
  Iterable<MarbleWithTimestamp> get emittedEventsSource2;
  @override
  Iterable<MarbleWithTimestamp> get mergedEvents;
  @override
  @JsonKey(ignore: true)
  _$MergeStateCopyWith<_MergeState> get copyWith =>
      throw _privateConstructorUsedError;
}

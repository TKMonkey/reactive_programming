// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cache_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CacheStateTearOff {
  const _$CacheStateTearOff();

  _CacheState call(
      {int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> emittedEvents = const [],
      Iterable<MarbleWithTimestamp> cachedEvents = const []}) {
    return _CacheState(
      initialTimestamp: initialTimestamp,
      emittedEvents: emittedEvents,
      cachedEvents: cachedEvents,
    );
  }
}

/// @nodoc
const $CacheState = _$CacheStateTearOff();

/// @nodoc
mixin _$CacheState {
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emittedEvents =>
      throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get cachedEvents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CacheStateCopyWith<CacheState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheStateCopyWith<$Res> {
  factory $CacheStateCopyWith(
          CacheState value, $Res Function(CacheState) then) =
      _$CacheStateCopyWithImpl<$Res>;
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> cachedEvents});
}

/// @nodoc
class _$CacheStateCopyWithImpl<$Res> implements $CacheStateCopyWith<$Res> {
  _$CacheStateCopyWithImpl(this._value, this._then);

  final CacheState _value;
  // ignore: unused_field
  final $Res Function(CacheState) _then;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? cachedEvents = freezed,
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
      cachedEvents: cachedEvents == freezed
          ? _value.cachedEvents
          : cachedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc
abstract class _$CacheStateCopyWith<$Res> implements $CacheStateCopyWith<$Res> {
  factory _$CacheStateCopyWith(
          _CacheState value, $Res Function(_CacheState) then) =
      __$CacheStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> cachedEvents});
}

/// @nodoc
class __$CacheStateCopyWithImpl<$Res> extends _$CacheStateCopyWithImpl<$Res>
    implements _$CacheStateCopyWith<$Res> {
  __$CacheStateCopyWithImpl(
      _CacheState _value, $Res Function(_CacheState) _then)
      : super(_value, (v) => _then(v as _CacheState));

  @override
  _CacheState get _value => super._value as _CacheState;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? cachedEvents = freezed,
  }) {
    return _then(_CacheState(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEvents: emittedEvents == freezed
          ? _value.emittedEvents
          : emittedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      cachedEvents: cachedEvents == freezed
          ? _value.cachedEvents
          : cachedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_CacheState implements _CacheState {
  const _$_CacheState(
      {this.initialTimestamp = 0,
      this.emittedEvents = const [],
      this.cachedEvents = const []});

  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emittedEvents;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> cachedEvents;

  @override
  String toString() {
    return 'CacheState(initialTimestamp: $initialTimestamp, emittedEvents: $emittedEvents, cachedEvents: $cachedEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CacheState &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.emittedEvents, emittedEvents) &&
            const DeepCollectionEquality()
                .equals(other.cachedEvents, cachedEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(emittedEvents),
      const DeepCollectionEquality().hash(cachedEvents));

  @JsonKey(ignore: true)
  @override
  _$CacheStateCopyWith<_CacheState> get copyWith =>
      __$CacheStateCopyWithImpl<_CacheState>(this, _$identity);
}

abstract class _CacheState implements CacheState {
  const factory _CacheState(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> cachedEvents}) = _$_CacheState;

  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get emittedEvents;
  @override
  Iterable<MarbleWithTimestamp> get cachedEvents;
  @override
  @JsonKey(ignore: true)
  _$CacheStateCopyWith<_CacheState> get copyWith =>
      throw _privateConstructorUsedError;
}

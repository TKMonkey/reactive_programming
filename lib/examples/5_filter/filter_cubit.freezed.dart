// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterStateTearOff {
  const _$FilterStateTearOff();

  _FilterState call(
      {int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> emittedEvents = const [],
      Iterable<MarbleWithTimestamp> filteredEvents = const []}) {
    return _FilterState(
      initialTimestamp: initialTimestamp,
      emittedEvents: emittedEvents,
      filteredEvents: filteredEvents,
    );
  }
}

/// @nodoc
const $FilterState = _$FilterStateTearOff();

/// @nodoc
mixin _$FilterState {
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get emittedEvents =>
      throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get filteredEvents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> filteredEvents});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? filteredEvents = freezed,
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
      filteredEvents: filteredEvents == freezed
          ? _value.filteredEvents
          : filteredEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc
abstract class _$FilterStateCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$FilterStateCopyWith(
          _FilterState value, $Res Function(_FilterState) then) =
      __$FilterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> filteredEvents});
}

/// @nodoc
class __$FilterStateCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$FilterStateCopyWith<$Res> {
  __$FilterStateCopyWithImpl(
      _FilterState _value, $Res Function(_FilterState) _then)
      : super(_value, (v) => _then(v as _FilterState));

  @override
  _FilterState get _value => super._value as _FilterState;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? emittedEvents = freezed,
    Object? filteredEvents = freezed,
  }) {
    return _then(_FilterState(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      emittedEvents: emittedEvents == freezed
          ? _value.emittedEvents
          : emittedEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
      filteredEvents: filteredEvents == freezed
          ? _value.filteredEvents
          : filteredEvents // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_FilterState implements _FilterState {
  const _$_FilterState(
      {this.initialTimestamp = 0,
      this.emittedEvents = const [],
      this.filteredEvents = const []});

  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> emittedEvents;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> filteredEvents;

  @override
  String toString() {
    return 'FilterState(initialTimestamp: $initialTimestamp, emittedEvents: $emittedEvents, filteredEvents: $filteredEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterState &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.emittedEvents, emittedEvents) &&
            const DeepCollectionEquality()
                .equals(other.filteredEvents, filteredEvents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(emittedEvents),
      const DeepCollectionEquality().hash(filteredEvents));

  @JsonKey(ignore: true)
  @override
  _$FilterStateCopyWith<_FilterState> get copyWith =>
      __$FilterStateCopyWithImpl<_FilterState>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> emittedEvents,
      Iterable<MarbleWithTimestamp> filteredEvents}) = _$_FilterState;

  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get emittedEvents;
  @override
  Iterable<MarbleWithTimestamp> get filteredEvents;
  @override
  @JsonKey(ignore: true)
  _$FilterStateCopyWith<_FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

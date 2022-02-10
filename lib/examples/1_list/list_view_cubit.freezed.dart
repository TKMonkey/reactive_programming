// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_view_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListViewStateTearOff {
  const _$ListViewStateTearOff();

  _ListViewState call(
      {int initialTimestamp = 0,
      Iterable<MarbleWithTimestamp> marbles = const []}) {
    return _ListViewState(
      initialTimestamp: initialTimestamp,
      marbles: marbles,
    );
  }
}

/// @nodoc
const $ListViewState = _$ListViewStateTearOff();

/// @nodoc
mixin _$ListViewState {
  int get initialTimestamp => throw _privateConstructorUsedError;
  Iterable<MarbleWithTimestamp> get marbles =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListViewStateCopyWith<ListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListViewStateCopyWith<$Res> {
  factory $ListViewStateCopyWith(
          ListViewState value, $Res Function(ListViewState) then) =
      _$ListViewStateCopyWithImpl<$Res>;
  $Res call({int initialTimestamp, Iterable<MarbleWithTimestamp> marbles});
}

/// @nodoc
class _$ListViewStateCopyWithImpl<$Res>
    implements $ListViewStateCopyWith<$Res> {
  _$ListViewStateCopyWithImpl(this._value, this._then);

  final ListViewState _value;
  // ignore: unused_field
  final $Res Function(ListViewState) _then;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? marbles = freezed,
  }) {
    return _then(_value.copyWith(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      marbles: marbles == freezed
          ? _value.marbles
          : marbles // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc
abstract class _$ListViewStateCopyWith<$Res>
    implements $ListViewStateCopyWith<$Res> {
  factory _$ListViewStateCopyWith(
          _ListViewState value, $Res Function(_ListViewState) then) =
      __$ListViewStateCopyWithImpl<$Res>;
  @override
  $Res call({int initialTimestamp, Iterable<MarbleWithTimestamp> marbles});
}

/// @nodoc
class __$ListViewStateCopyWithImpl<$Res>
    extends _$ListViewStateCopyWithImpl<$Res>
    implements _$ListViewStateCopyWith<$Res> {
  __$ListViewStateCopyWithImpl(
      _ListViewState _value, $Res Function(_ListViewState) _then)
      : super(_value, (v) => _then(v as _ListViewState));

  @override
  _ListViewState get _value => super._value as _ListViewState;

  @override
  $Res call({
    Object? initialTimestamp = freezed,
    Object? marbles = freezed,
  }) {
    return _then(_ListViewState(
      initialTimestamp: initialTimestamp == freezed
          ? _value.initialTimestamp
          : initialTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      marbles: marbles == freezed
          ? _value.marbles
          : marbles // ignore: cast_nullable_to_non_nullable
              as Iterable<MarbleWithTimestamp>,
    ));
  }
}

/// @nodoc

class _$_ListViewState implements _ListViewState {
  const _$_ListViewState({this.initialTimestamp = 0, this.marbles = const []});

  @JsonKey()
  @override
  final int initialTimestamp;
  @JsonKey()
  @override
  final Iterable<MarbleWithTimestamp> marbles;

  @override
  String toString() {
    return 'ListViewState(initialTimestamp: $initialTimestamp, marbles: $marbles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListViewState &&
            const DeepCollectionEquality()
                .equals(other.initialTimestamp, initialTimestamp) &&
            const DeepCollectionEquality().equals(other.marbles, marbles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialTimestamp),
      const DeepCollectionEquality().hash(marbles));

  @JsonKey(ignore: true)
  @override
  _$ListViewStateCopyWith<_ListViewState> get copyWith =>
      __$ListViewStateCopyWithImpl<_ListViewState>(this, _$identity);
}

abstract class _ListViewState implements ListViewState {
  const factory _ListViewState(
      {int initialTimestamp,
      Iterable<MarbleWithTimestamp> marbles}) = _$_ListViewState;

  @override
  int get initialTimestamp;
  @override
  Iterable<MarbleWithTimestamp> get marbles;
  @override
  @JsonKey(ignore: true)
  _$ListViewStateCopyWith<_ListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

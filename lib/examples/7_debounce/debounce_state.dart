part of 'debounce_cubit.dart';

@freezed
class DebounceState with _$DebounceState {
  const factory DebounceState({
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEvents,
    @Default([]) Iterable<MarbleWithTimestamp> debouncedEvents,
  }) = _DebounceState;
}

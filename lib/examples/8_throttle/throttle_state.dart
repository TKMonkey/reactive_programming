part of 'throttle_cubit.dart';

@freezed
class ThrottleState with _$ThrottleState {
  const factory ThrottleState({
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEvents,
    @Default([]) Iterable<MarbleWithTimestamp> throttledEvents,
  }) = _ThrottleState;
}

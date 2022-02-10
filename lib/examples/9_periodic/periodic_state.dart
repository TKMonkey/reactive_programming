part of 'periodic_cubit.dart';

@freezed
class PeriodicState with _$PeriodicState {
  const factory PeriodicState({
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEvents,
  }) = _PeriodicState;
}

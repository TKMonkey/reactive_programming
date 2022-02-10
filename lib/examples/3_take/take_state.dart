part of 'take_cubit.dart';

@freezed
class TakeState with _$TakeState {
  const factory TakeState({
    @Default(0) int takeCount,
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEvents,
    @Default([]) Iterable<MarbleWithTimestamp> resultEvents,
  }) = _TakeState;
}

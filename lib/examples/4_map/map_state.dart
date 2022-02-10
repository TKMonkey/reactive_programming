part of 'map_cubit.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEvents,
    @Default([]) Iterable<MarbleWithTimestamp> mappedEvents,
  }) = _MapState;
}

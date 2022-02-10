part of 'filter_map_take_cubit.dart';

@freezed
class FilterMapTakeState with _$FilterMapTakeState {
  const factory FilterMapTakeState({
    @Default(0) int takeCount,
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEvents,
    @Default([]) Iterable<MarbleWithTimestamp> filteredEvents,
    @Default([]) Iterable<MarbleWithTimestamp> mappedEvents,
    @Default([]) Iterable<MarbleWithTimestamp> filteredMappedEvents,
  }) = _FilterMapTakeState;
}

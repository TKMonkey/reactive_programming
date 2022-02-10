part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState(
          {@Default(0) int initialTimestamp,
          @Default([]) Iterable<MarbleWithTimestamp> emittedEvents,
          @Default([]) Iterable<MarbleWithTimestamp> filteredEvents}) =
      _FilterState;
}

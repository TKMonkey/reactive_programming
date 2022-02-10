part of 'merge_cubit.dart';

@freezed
class MergeState with _$MergeState {
  const factory MergeState({
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEventsSource1,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEventsSource2,
    @Default([]) Iterable<MarbleWithTimestamp> mergedEvents,
  }) = _MergeState;
}

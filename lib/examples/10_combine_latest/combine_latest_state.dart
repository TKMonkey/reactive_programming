part of 'combine_latest_cubit.dart';

@freezed
class CombineLatestState with _$CombineLatestState {
  const factory CombineLatestState({
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEventsSource1,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEventsSource2,
    @Default([]) Iterable<MarbleWithTimestamp> combineLatestEvents,
  }) = _CombineLatestState;
}

part of 'cache_cubit.dart';

@freezed
class CacheState with _$CacheState {
  const factory CacheState({
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emittedEvents,
    @Default([]) Iterable<MarbleWithTimestamp> cachedEvents,
  }) = _CacheState;
}

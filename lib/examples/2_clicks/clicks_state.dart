part of 'clicks_cubit.dart';

@freezed
class ClicksState with _$ClicksState {
  const factory ClicksState({
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> emmitedEvents,
  }) = _ClicksState;
}

part of 'list_view_cubit.dart';

@freezed
class ListViewState with _$ListViewState {
  const factory ListViewState({
    @Default(0) int initialTimestamp,
    @Default([]) Iterable<MarbleWithTimestamp> marbles,
  }) = _ListViewState;
}

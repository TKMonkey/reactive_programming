import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'filter_cubit.freezed.dart';
part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  final BehaviorSubject<Marble<int>> _events = BehaviorSubject<Marble<int>>();
  Stream<Marble<int>> get _filterStream =>
      _events.where((Marble<int> marble) => marble.data.isOdd);

  FilterCubit() : super(const FilterState()) {
    emit(state.copyWith(
      initialTimestamp: DateTime.now().microsecondsSinceEpoch,
    ));

    _events.listen((Marble<int> marble) {
      emit(
        state.copyWith(
          emittedEvents: [
            ...state.emittedEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });

    _filterStream.listen((Marble<int> marble) {
      emit(
        state.copyWith(
          filteredEvents: [
            ...state.filteredEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });
  }

  addClickEvent() {
    _events.value = Marble.circle(
      data: state.emittedEvents.length,
      color: Colors.red,
    );
  }
}

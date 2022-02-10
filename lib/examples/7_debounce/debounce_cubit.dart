import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'debounce_cubit.freezed.dart';
part 'debounce_state.dart';

class DebounceCubit extends Cubit<DebounceState> {
  final BehaviorSubject<Marble<String>> _events =
      BehaviorSubject<Marble<String>>();

  final String _searchText = '57Blocks';
  int currentIndex = 0;

  Stream<Marble<String>> get _debouncedStream => _events.debounceTime(
        const Duration(milliseconds: 500),
      );

  DebounceCubit() : super(const DebounceState()) {
    emit(
      state.copyWith(initialTimestamp: DateTime.now().microsecondsSinceEpoch),
    );

    _events.listen((Marble<String> marble) {
      emit(
        state.copyWith(
          emittedEvents: [
            ...state.emittedEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });

    _debouncedStream.listen((Marble<String> marble) {
      emit(
        state.copyWith(
          debouncedEvents: [
            ...state.debouncedEvents,
            marble.toMarbleWithNowTimestamp()
          ],
        ),
      );
    });
  }

  void addClickEvent() {
    final searchTerm = _searchText.substring(0, currentIndex + 1);

    _events.value = Marble.circle(data: searchTerm, color: Colors.blueAccent);

    currentIndex = (currentIndex + 1) % 8;
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'throttle_cubit.freezed.dart';
part 'throttle_state.dart';

class ThrottleCubit extends Cubit<ThrottleState> {
  final BehaviorSubject<Marble<int>> _events = BehaviorSubject<Marble<int>>();

  Stream<Marble<int>> get _throttledStream => _events.throttleTime(
        const Duration(milliseconds: 3000),
      );

  ThrottleCubit() : super(const ThrottleState()) {
    emit(
      state.copyWith(initialTimestamp: DateTime.now().microsecondsSinceEpoch),
    );

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

    _throttledStream.listen((Marble<int> marble) {
      emit(
        state.copyWith(
          throttledEvents: [
            ...state.throttledEvents,
            marble.toMarbleWithNowTimestamp()
          ],
        ),
      );
    });
  }

  void addClickEvent() {
    _events.value = Marble.circle(
        data: state.emittedEvents.length, color: Colors.blueAccent);
  }
}

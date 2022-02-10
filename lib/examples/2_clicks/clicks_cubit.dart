import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'clicks_cubit.freezed.dart';
part 'clicks_state.dart';

class ClicksCubit extends Cubit<ClicksState> {
  final BehaviorSubject<Marble> _clicks = BehaviorSubject<Marble>();

  ClicksCubit()
      : super(
          const ClicksState(),
        ) {
    emit(
      state.copyWith(initialTimestamp: DateTime.now().microsecondsSinceEpoch),
    );
    _clicks.listen((Marble marble) {
      emit(
        state.copyWith(
          emmitedEvents: [
            ...state.emmitedEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });
  }

  void addClickEvent() {
    final circleMarble = Marble.circle(
      data: state.emmitedEvents.length,
      color: Colors.blue,
    );

    _clicks.add(circleMarble);
  }
}

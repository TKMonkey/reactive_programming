import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'take_cubit.freezed.dart';
part 'take_state.dart';

class TakeCubit extends Cubit<TakeState> {
  static const _takeCount = 3;
  final BehaviorSubject<Marble<int>> _events = BehaviorSubject();

  Stream<Marble<int>> get _takeStream => _events.take(_takeCount);

  // Stream<Marble<int>> get _events => _eventsBS;

  TakeCubit() : super(const TakeState()) {
    emit(
      state.copyWith(
        initialTimestamp: DateTime.now().microsecondsSinceEpoch,
        takeCount: _takeCount,
      ),
    );

    _events.listen((Marble marble) {
      emit(
        state.copyWith(
          emittedEvents: [
            ...state.emittedEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });

    _takeStream.listen((Marble marble) {
      emit(
        state.copyWith(
          resultEvents: [
            ...state.resultEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });
  }

  void addClickEvent() {
    print("En addClickEvent");
    _events.add(
      Marble.circle(
        data: state.emittedEvents.length,
        color: Colors.green,
      ),
    );
  }
}

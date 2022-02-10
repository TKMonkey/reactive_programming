import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'periodic_cubit.freezed.dart';
part 'periodic_state.dart';

class PeriodicCubit extends Cubit<PeriodicState> {
  final BehaviorSubject<Marble<int>> _events = BehaviorSubject<Marble<int>>();

  late StreamSubscription<Marble<int>> _periodicSubscription;

  PeriodicCubit() : super(const PeriodicState()) {
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

    _periodicSubscription = Stream.periodic(const Duration(seconds: 1))
        .map(
          (_) => Marble.circle(
              data: state.emittedEvents.length, color: Colors.blueAccent),
        )
        .doOnData((Marble<int> marble) => _events.add(marble))
        .listen((_) {});
  }

  @override
  Future<void> close() async {
    await _periodicSubscription.cancel();
    return super.close();
  }
}

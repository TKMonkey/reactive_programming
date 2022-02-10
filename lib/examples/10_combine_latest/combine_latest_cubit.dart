import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'combine_latest_cubit.freezed.dart';
part 'combine_latest_state.dart';

class CombineLatestCubit extends Cubit<CombineLatestState> {
  static const _letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  final BehaviorSubject<Marble<int>> _eventsSource1 =
      BehaviorSubject<Marble<int>>();
  final Stream<Marble<String>> _eventsSource2 = Stream<Marble<String>>.periodic(
    const Duration(seconds: 1),
    (count) => Marble.triangle(
      data: _letters[count],
      color: Colors.green,
    ),
  );

  late StreamSubscription<Marble<String>> _combineLatestSubscription;

  CombineLatestCubit() : super(const CombineLatestState()) {
    emit(
      state.copyWith(initialTimestamp: DateTime.now().microsecondsSinceEpoch),
    );

    final Stream<Marble<int>> mappedEventSource1 =
        _eventsSource1.doOnData((Marble<int> marble) {
      emit(
        state.copyWith(
          emittedEventsSource1: [
            ...state.emittedEventsSource1,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });

    final Stream<Marble<String>> mappedEventSource2 =
        _eventsSource2.doOnData((Marble<String> marble) {
      emit(
        state.copyWith(
          emittedEventsSource2: [
            ...state.emittedEventsSource2,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });

    _combineLatestSubscription = CombineLatestStream.combine2(
      mappedEventSource1,
      mappedEventSource2,
      (Marble<int> marble1, Marble<String> marble2) => Marble(
          data: '${marble1.data}${marble2.data}',
          color: marble1.color,
          shape: marble2.shape),
    ).doOnData((Marble<String> marble) {
      emit(
        state.copyWith(
          combineLatestEvents: [
            ...state.combineLatestEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    }).listen((_) {});
  }

  @override
  Future<void> close() async {
    await _combineLatestSubscription.cancel();
    super.close();
  }

  void addClickEvent() {
    _eventsSource1.value = Marble.circle(
        data: state.emittedEventsSource1.length, color: Colors.redAccent);
  }
}

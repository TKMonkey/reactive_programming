import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final _colors = [
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.pinkAccent,
    Colors.teal,
  ];

  final Random _random = Random();

  final BehaviorSubject<Marble> _events = BehaviorSubject();
  Stream<Marble<int>> get _mapStream => _events.map(
        (Marble marble) => marble.copyWith(shape: Triangle.i),
      );

  MapCubit() : super(const MapState()) {
    emit(
      state.copyWith(initialTimestamp: DateTime.now().microsecondsSinceEpoch),
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

    _mapStream.listen((Marble marble) {
      emit(
        state.copyWith(
          mappedEvents: [
            ...state.mappedEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });
  }

  void addClickEvent() {
    final random = _random.nextInt(_colors.length);
    final color = _colors[random];

    _events.value = Marble(
      data: state.emittedEvents.length,
      color: color,
      shape: Circle.i,
    );
  }
}

import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'filter_map_take_cubit.freezed.dart';
part 'filter_map_take_state.dart';

class FilterMapTakeCubit extends Cubit<FilterMapTakeState> {
  static const _takeCount = 3;

  final _colors = [
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.pinkAccent,
    Colors.teal,
  ];

  final Random _random = Random();

  BehaviorSubject<Marble<int>> _events = BehaviorSubject();

  Stream<Marble<int>> get _filteredEvents =>
      _events.where((Marble<int> marble) => marble.data.isOdd);

  Stream<Marble<int>> get _filteredMappedEvents => _filteredEvents.map(
        (Marble<int> marble) => marble.copyWith<int>(shape: Triangle.i),
      );

  Stream<Marble<int>> get _filteredMappedTakenEvents =>
      _filteredMappedEvents.take(_takeCount);

  FilterMapTakeCubit() : super(const FilterMapTakeState()) {
    emit(
      state.copyWith(
        initialTimestamp: DateTime.now().microsecondsSinceEpoch,
      ),
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

    _filteredEvents.listen((Marble<int> marble) {
      emit(
        state.copyWith(
          filteredEvents: [
            ...state.filteredEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });

    _filteredMappedEvents.listen((Marble<int> marble) {
      emit(
        state.copyWith(
          mappedEvents: [
            ...state.mappedEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    });

    _filteredMappedTakenEvents.listen((Marble<int> marble) {
      emit(
        state.copyWith(
          filteredMappedEvents: [
            ...state.filteredMappedEvents,
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

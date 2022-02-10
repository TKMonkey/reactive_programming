import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';
import 'package:rxdart/rxdart.dart';

part 'cache_cubit.freezed.dart';
part 'cache_state.dart';

class CacheCubit extends Cubit<CacheState> {
  final Stream<int> _heavyLoad = Stream.fromFuture(
    Future.delayed(
      const Duration(seconds: 5),
    ),
  ).map((event) => 123);

  final BehaviorSubject<Marble<int>> _events = BehaviorSubject<Marble<int>>();

  Stream<Marble<int>> get _cache => _events;

  CacheCubit() : super(const CacheState()) {
    emit(
      state.copyWith(initialTimestamp: DateTime.now().microsecondsSinceEpoch),
    );

    _heavyLoad
        .map((int result) =>
            Marble.circle(data: result, color: Colors.blueAccent))
        .doOnData((Marble<int> marble) => emit(state.copyWith(emittedEvents: [
              ...state.emittedEvents,
              marble.toMarbleWithNowTimestamp(),
            ])))
        .doOnData((Marble<int> marble) => _events.value = marble)
        .listen((_) {});
  }

  void addClickEvent() {
    _cache.doOnData((Marble<int> marble) {
      emit(
        state.copyWith(
          cachedEvents: [
            ...state.cachedEvents,
            marble.toMarbleWithNowTimestamp(),
          ],
        ),
      );
    }).first;
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_programming/marble.dart';

part 'list_view_cubit.freezed.dart';
part 'list_view_state.dart';

class ListViewCubit extends Cubit<ListViewState> {
  ListViewCubit() : super(const ListViewState());

  final Marble marble1 = Marble.circle(
    data: 'A',
    color: Colors.blue,
  );

  final Marble marble2 = Marble.circle(
    data: 'B',
    color: Colors.teal,
  );

  final Marble marble3 = Marble.triangle(
    data: 'C',
    color: Colors.green,
  );

  Iterable<Marble> get marbles => [
        marble1,
        marble2,
        marble3,
      ];

  initListStream() {
    final initialTimestamp = DateTime.now().microsecondsSinceEpoch;
    emit(state.copyWith(
      initialTimestamp: initialTimestamp,
      marbles: [],
    ));
    Stream.fromIterable(marbles).listen((Marble marble) {
      emit(state.copyWith(
          marbles: [...state.marbles, marble.toMarbleWithNowTimestamp()]));
    }, onDone: () {
      emit(state.copyWith(marbles: [
        ...state.marbles,
        Marble.end().toMarbleWithNowTimestamp(),
      ]));
    });
  }
}

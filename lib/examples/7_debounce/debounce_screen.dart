import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/7_debounce/debounce_cubit.dart';
import 'package:reactive_programming/examples/7_debounce/debounce_view.dart';

class DebounceScreen extends StatelessWidget {
  const DebounceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DebounceCubit>(
      create: (_) => DebounceCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Debounce'),
          automaticallyImplyLeading: true,
        ),
        body: const DebounceView(),
      ),
    );
  }
}

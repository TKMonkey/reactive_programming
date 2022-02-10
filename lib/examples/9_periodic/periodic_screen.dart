import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/9_periodic/periodic_cubit.dart';
import 'package:reactive_programming/examples/9_periodic/periodic_view.dart';

class PeriodicScreen extends StatelessWidget {
  const PeriodicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PeriodicCubit>(
      create: (_) => PeriodicCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Periodic'),
          automaticallyImplyLeading: true,
        ),
        body: const PeriodicView(),
      ),
    );
  }
}

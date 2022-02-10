import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/3_take/take_cubit.dart';
import 'package:reactive_programming/examples/3_take/take_view.dart';

class TakeScreen extends StatelessWidget {
  const TakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TakeCubit>(
      create: (_) => TakeCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Take'),
          automaticallyImplyLeading: true,
        ),
        body: const TakeView(),
      ),
    );
  }
}

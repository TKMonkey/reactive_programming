import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/8_throttle/throttle_cubit.dart';
import 'package:reactive_programming/examples/8_throttle/throttle_view.dart';

class ThrottleScreen extends StatelessWidget {
  const ThrottleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThrottleCubit>(
      create: (_) => ThrottleCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Throttle'),
          automaticallyImplyLeading: true,
        ),
        body: const ThrottleView(),
      ),
    );
  }
}

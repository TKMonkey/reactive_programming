import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/10_combine_latest/combine_latest_cubit.dart';
import 'package:reactive_programming/examples/10_combine_latest/combine_latest_view.dart';

class CombineLatestScreen extends StatelessWidget {
  const CombineLatestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CombineLatestCubit>(
      create: (_) => CombineLatestCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CombineLatest'),
          automaticallyImplyLeading: true,
        ),
        body: const CombineLatestView(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/11_merge/merge_cubit.dart';
import 'package:reactive_programming/examples/11_merge/merge_view.dart';

class MergeScreen extends StatelessWidget {
  const MergeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MergeCubit>(
      create: (_) => MergeCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Merge'),
          automaticallyImplyLeading: true,
        ),
        body: const MergeView(),
      ),
    );
  }
}

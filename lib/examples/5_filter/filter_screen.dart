import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/5_filter/filter_cubit.dart';
import 'package:reactive_programming/examples/5_filter/filter_view.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FilterCubit>(
      create: (_) => FilterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Filter'),
          automaticallyImplyLeading: true,
        ),
        body: const FilterView(),
      ),
    );
  }
}

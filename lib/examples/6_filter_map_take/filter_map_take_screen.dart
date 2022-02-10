import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/6_filter_map_take/filter_map_take_cubit.dart';
import 'package:reactive_programming/examples/6_filter_map_take/filter_map_take_view.dart';

class FilterMapTakeScreen extends StatelessWidget {
  const FilterMapTakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FilterMapTakeCubit>(
      create: (_) => FilterMapTakeCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Filter Map and Take'),
          automaticallyImplyLeading: true,
        ),
        body: const FilterMapTakeView(),
      ),
    );
  }
}

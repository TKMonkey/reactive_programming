import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/2_clicks/clicks_cubit.dart';
import 'package:reactive_programming/examples/2_clicks/clicks_view.dart';

class ClicksScreen extends StatelessWidget {
  const ClicksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClicksCubit>(
      create: (_) => ClicksCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Clicks'),
          automaticallyImplyLeading: true,
        ),
        body: const ClicksView(),
      ),
    );
  }
}

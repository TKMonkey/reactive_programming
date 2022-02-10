import 'package:flutter/material.dart' hide ListView;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/1_list/list_view.dart';
import 'package:reactive_programming/examples/1_list/list_view_cubit.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ListViewCubit>(
      create: (_) => ListViewCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('List'),
          automaticallyImplyLeading: true,
        ),
        body: const ListView(),
      ),
    );
  }
}

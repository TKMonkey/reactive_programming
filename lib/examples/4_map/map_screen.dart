import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/4_map/map_cubit.dart';
import 'package:reactive_programming/examples/4_map/map_view.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MapCubit>(
      create: (_) => MapCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Map'),
          automaticallyImplyLeading: true,
        ),
        body: const MapView(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/4_map/map_cubit.dart';
import 'package:reactive_programming/examples/widgets/result_timeline.dart';
import 'package:reactive_programming/examples/widgets/source_timeline.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          BlocBuilder<MapCubit, MapState>(
            builder: (context, state) {
              return Column(
                children: [
                  SourceTimeLine(
                    marbles: state.emittedEvents,
                    initialTimestamp: state.initialTimestamp,
                    length: const Duration(
                      seconds: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                    child: Center(
                      child: Text("Map from Circles to Triangles"),
                    ),
                  ),
                  ResultTimeLine(
                    marbles: state.mappedEvents,
                    initialTimestamp: state.initialTimestamp,
                    length: const Duration(
                      seconds: 10,
                    ),
                  ),
                ],
              );
            },
          ),
          Expanded(child: Container()),
          MaterialButton(
            onPressed: () => context.read<MapCubit>().addClickEvent(),
            child: const Text("Add event!"),
          )
        ],
      ),
    );
  }
}

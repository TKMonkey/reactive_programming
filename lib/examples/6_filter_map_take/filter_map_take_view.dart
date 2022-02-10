import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/6_filter_map_take/filter_map_take_cubit.dart';
import 'package:reactive_programming/examples/widgets/result_timeline.dart';
import 'package:reactive_programming/examples/widgets/source_timeline.dart';

class FilterMapTakeView extends StatelessWidget {
  const FilterMapTakeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          BlocBuilder<FilterMapTakeCubit, FilterMapTakeState>(
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
                      child: Text("Step 1 - Filter out even numbers"),
                    ),
                  ),
                  ResultTimeLine(
                    marbles: state.filteredEvents,
                    initialTimestamp: state.initialTimestamp,
                    length: const Duration(
                      seconds: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                    child: Center(
                      child: Text(
                          "Step 2 - Map filtered events from circle to triangles"),
                    ),
                  ),
                  ResultTimeLine(
                    marbles: state.mappedEvents,
                    initialTimestamp: state.initialTimestamp,
                    length: const Duration(
                      seconds: 10,
                    ),
                  ),
                  SizedBox(
                    height: 90,
                    child: Center(
                      child: Text(
                          "Filtered Mapped events (Take ${state.takeCount})"),
                    ),
                  ),
                  ResultTimeLine(
                    marbles: state.filteredMappedEvents,
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
            onPressed: () => context.read<FilterMapTakeCubit>().addClickEvent(),
            child: const Text("Add event!"),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/5_filter/filter_cubit.dart';
import 'package:reactive_programming/examples/widgets/result_timeline.dart';
import 'package:reactive_programming/examples/widgets/source_timeline.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          BlocBuilder<FilterCubit, FilterState>(
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
                      child: Text("Filters out even numbers"),
                    ),
                  ),
                  ResultTimeLine(
                      marbles: state.filteredEvents,
                      initialTimestamp: state.initialTimestamp,
                      length: const Duration(
                        seconds: 10,
                      )),
                ],
              );
            },
          ),
          Expanded(child: Container()),
          MaterialButton(
            onPressed: () => context.read<FilterCubit>().addClickEvent(),
            child: const Text("Add event!"),
          )
        ],
      ),
    );
  }
}

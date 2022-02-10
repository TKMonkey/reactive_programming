import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/7_debounce/debounce_cubit.dart';
import 'package:reactive_programming/examples/widgets/result_timeline.dart';
import 'package:reactive_programming/examples/widgets/source_timeline.dart';

class DebounceView extends StatelessWidget {
  const DebounceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          BlocBuilder<DebounceCubit, DebounceState>(
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
                      child: Text("Debounce"),
                    ),
                  ),
                  ResultTimeLine(
                    marbles: state.debouncedEvents,
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
            onPressed: () => context.read<DebounceCubit>().addClickEvent(),
            child: const Text("Add event!"),
          )
        ],
      ),
    );
  }
}

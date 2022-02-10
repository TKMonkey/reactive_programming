import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/11_merge/merge_cubit.dart';
import 'package:reactive_programming/examples/widgets/result_timeline.dart';
import 'package:reactive_programming/examples/widgets/source_timeline.dart';

class MergeView extends StatelessWidget {
  const MergeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          BlocBuilder<MergeCubit, MergeState>(
            builder: (context, state) {
              return Column(
                children: [
                  SourceTimeLine(
                    marbles: state.emittedEventsSource1,
                    initialTimestamp: state.initialTimestamp,
                    length: const Duration(
                      seconds: 10,
                    ),
                  ),
                  SourceTimeLine(
                    marbles: state.emittedEventsSource2,
                    initialTimestamp: state.initialTimestamp,
                    length: const Duration(
                      seconds: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                    child: Center(
                      child: Text("Merge"),
                    ),
                  ),
                  ResultTimeLine(
                    marbles: state.mergedEvents,
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
            onPressed: () => context.read<MergeCubit>().addClickEvent(),
            child: const Text("Add event!"),
          )
        ],
      ),
    );
  }
}

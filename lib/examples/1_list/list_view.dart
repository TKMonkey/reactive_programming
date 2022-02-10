import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/1_list/list_view_cubit.dart';
import 'package:reactive_programming/examples/widgets/source_timeline.dart';

class ListView extends StatelessWidget {
  const ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          BlocBuilder<ListViewCubit, ListViewState>(
            builder: (context, state) => SourceTimeLine(
              marbles: state.marbles,
              initialTimestamp: state.initialTimestamp,
              length: const Duration(
                microseconds: 1500,
              ),
              scale: 6,
            ),
          ),
          Expanded(child: Container()),
          MaterialButton(
            onPressed: () => context.read<ListViewCubit>().initListStream(),
            child: const Text("Emit list"),
          )
        ],
      ),
    );
  }
}

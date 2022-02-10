import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_programming/examples/2_clicks/clicks_cubit.dart';
import 'package:reactive_programming/examples/widgets/source_timeline.dart';

class ClicksView extends StatelessWidget {
  const ClicksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          BlocBuilder<ClicksCubit, ClicksState>(
            builder: (context, state) => SourceTimeLine(
                marbles: state.emmitedEvents,
                initialTimestamp: state.initialTimestamp,
                length: const Duration(
                  seconds: 10,
                )),
          ),
          Expanded(child: Container()),
          MaterialButton(
            onPressed: () => context.read<ClicksCubit>().addClickEvent(),
            child: const Text("Add event!"),
          )
        ],
      ),
    );
  }
}

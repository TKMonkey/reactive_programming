import 'package:flutter/material.dart';
import 'package:reactive_programming/examples/widgets/marble_timeline_widget_2.dart';
import 'package:reactive_programming/marble.dart';

class ResultTimeLine extends StatelessWidget {
  const ResultTimeLine({
    Key? key,
    required this.marbles,
    required this.initialTimestamp,
    required this.length,
  }) : super(key: key);

  final Duration length;
  final int initialTimestamp;
  final Iterable<MarbleWithTimestamp> marbles;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: MarbleTimeLineWidget2(
        marbles: marbles,
        initialTimestamp: initialTimestamp,
        length: length,
      ),
    );
  }
}

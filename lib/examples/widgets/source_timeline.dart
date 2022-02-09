import 'package:flutter/material.dart';
import 'package:reactive_programming/examples/widgets/marble_timeline_widget_2.dart';
import 'package:reactive_programming/marble.dart';

class SourceTimeLine extends StatelessWidget {
  const SourceTimeLine({
    Key? key,
    required this.marbles,
    required this.initialTimestamp,
    required this.length,
    this.scale = 1,
  }) : super(key: key);

  final double scale;
  final Duration length;
  final int initialTimestamp;
  final Iterable<MarbleWithTimestamp> marbles;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: MarbleTimeLineWidget2(
        marbles: marbles,
        initialTimestamp: initialTimestamp,
        length: length,
        scale: scale,
      ),
    );
  }
}

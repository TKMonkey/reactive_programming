import 'package:flutter/material.dart';
import 'package:reactive_programming/marble.dart';

class TimelinePainter extends CustomPainter {
  const TimelinePainter({
    required this.marbleWidth,
    required this.marbles,
    required this.initialTimestamp,
    required this.length,
    required this.scale,
  });

  final Iterable<MarbleWithTimestamp> marbles;
  final int initialTimestamp;
  final double marbleWidth;
  final Duration length;
  final double scale;

  @override
  void paint(Canvas canvas, Size size) {
    _drawLine(canvas: canvas, parentSize: size);

    final pxByMsNonScaled =
        ((size.width - marbleWidth) / length.inMicroseconds);
    final pxByMs = pxByMsNonScaled * scale;

    for (final marble in marbles) {
      _drawMarble(
        marble: marble,
        canvas: canvas,
        size: Size(marbleWidth, marbleWidth),
        parentSize: size,
        pxByMs: pxByMs,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    if (oldDelegate is TimelinePainter) {
      return marbles.length != oldDelegate.marbles.length;
    }
    return false;
  }

  void _drawLine({required Canvas canvas, required Size parentSize}) {
    final Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..color = Colors.black54;

    canvas.drawLine(
      Offset(0, parentSize.height / 2),
      Offset(
        parentSize.width,
        parentSize.height / 2,
      ),
      paint,
    );
  }

  void _drawMarble({
    required MarbleWithTimestamp<dynamic> marble,
    required Canvas canvas,
    required Size size,
    required Size parentSize,
    required double pxByMs,
  }) {
    _drawMarbleShape(
      marble: marble,
      canvas: canvas,
      size: size,
      parentSize: parentSize,
      pxByMs: pxByMs,
    );

    _drawMarbleText(
      marble: marble,
      canvas: canvas,
      size: size,
      parentSize: parentSize,
      pxByMs: pxByMs,
    );
  }

  void _drawMarbleShape({
    required MarbleWithTimestamp<dynamic> marble,
    required Canvas canvas,
    required Size size,
    required Size parentSize,
    required double pxByMs,
  }) {
    final Paint paint = Paint()
      ..color = marble.color
      ..strokeWidth = 4
      ..style = marble.paintingStyle;

    final int elapsedMs = marble.timestamp - initialTimestamp;

    final double xOffset = pxByMs * elapsedMs + size.width / 2;

    final Path path = marble.shape.getPath(
        size,
        Offset(
          xOffset,
          parentSize.height / 2,
        ));

    canvas.drawPath(path, paint);
  }

  void _drawMarbleText({
    required MarbleWithTimestamp<dynamic> marble,
    required Canvas canvas,
    required Size size,
    required Size parentSize,
    required double pxByMs,
  }) {
    TextSpan textSpan = TextSpan(text: marble.data.toString());
    TextPainter textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    final int elapsedMs = marble.timestamp - initialTimestamp;
    final double xOffset =
        pxByMs * elapsedMs + size.width / 2 - textPainter.width / 2;

    textPainter.paint(canvas,
        Offset(xOffset, (parentSize.height / 2) - (textPainter.height / 2)));
  }
}

class MarbleTimeLineWidget2 extends StatelessWidget {
  final Iterable<MarbleWithTimestamp> marbles;
  final int initialTimestamp;
  final double scale;
  final Duration length;
  final TimelinePainter timeLinePainter;

  MarbleTimeLineWidget2({
    required this.marbles,
    required this.initialTimestamp,
    required this.length,
    this.scale = 1,
    Key? key,
  })  : timeLinePainter = TimelinePainter(
          marbleWidth: 45,
          marbles: marbles,
          initialTimestamp: initialTimestamp,
          length: length,
          scale: scale,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: CustomPaint(
        painter: timeLinePainter,
      ),
    );
  }
}

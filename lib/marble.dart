import 'package:flutter/material.dart';

abstract class Shape {
  Path getPath(
    Size size,
    Offset offset,
  );
}

class Triangle implements Shape {
  static const Triangle _singleton = Triangle._();

  static Triangle get i => _singleton;

  const Triangle._();

  @override
  Path getPath(
    Size size,
    Offset offset,
  ) {
    final x = size.width;
    final y = size.height;

    final leftMostX = offset.dx - x / 2;
    final rightMostX = offset.dx + x / 2;
    final centerX = offset.dx;

    final topMostY = offset.dy - y / 2;
    final bottomMostY = offset.dy + y / 2;

    return Path()
      ..moveTo(leftMostX, bottomMostY)
      ..lineTo(centerX, topMostY)
      ..lineTo(rightMostX, bottomMostY)
      ..lineTo(leftMostX, bottomMostY);
  }
}

class Circle implements Shape {
  static const Circle _singleton = Circle._();

  static Circle get i => _singleton;

  const Circle._();

  @override
  Path getPath(
    Size size,
    Offset offset,
  ) {
    final x = size.width;
    return Path()
      ..addOval(
        Rect.fromCircle(center: offset, radius: x / 2),
      );
  }
}

class Line implements Shape {
  static const Line _singleton = Line._();

  static Line get i => _singleton;

  const Line._();

  @override
  Path getPath(Size size, Offset offset) {
    final y = size.height;
    return Path()
      ..moveTo(
        offset.dx, // + (size.width / 2),
        offset.dy - y / 2,
      )
      ..lineTo(
        offset.dx, // + (size.width / 2),
        offset.dy + y / 2,
      )
      ..lineTo(
        offset.dx, // + (size.width / 2),
        offset.dy - y / 2,
      );
  }
}

class Marble<D> {
  final D data;
  final Color color;
  final Shape shape;
  final PaintingStyle paintingStyle;

  const Marble({
    required this.data,
    required this.color,
    required this.shape,
    this.paintingStyle = PaintingStyle.fill,
  });

  Marble.triangle({
    required D data,
    required Color color,
  }) : this(
          data: data,
          color: color,
          shape: Triangle.i,
        );

  Marble.circle({
    required D data,
    required Color color,
  }) : this(
          data: data,
          color: color,
          shape: Circle.i,
        );

  Marble.end()
      : this(
          data: '' as D,
          color: Colors.black,
          shape: Line.i,
          paintingStyle: PaintingStyle.stroke,
        );

  Marble<D2> copyWith<D2>({D2? data, Color? color, Shape? shape}) => Marble(
        data: data ?? this.data as D2,
        color: color ?? this.color,
        shape: shape ?? this.shape,
      );

  MarbleWithTimestamp toMarbleWithTimestamp(int timestamp) {
    return MarbleWithTimestamp(this, timestamp);
  }

  MarbleWithTimestamp toMarbleWithNowTimestamp() {
    return MarbleWithTimestamp(this, DateTime.now().microsecondsSinceEpoch);
  }

  @override
  String toString() {
    return 'Marble{data: $data, color: $color, shape: $shape, paintingStyle: $paintingStyle}';
  }
}

class MarbleWithTimestamp<D> {
  final Marble<D> marble;
  final int timestamp;

  MarbleWithTimestamp(this.marble, this.timestamp);

  D get data => marble.data;
  Color get color => marble.color;
  Shape get shape => marble.shape;
  PaintingStyle get paintingStyle => marble.paintingStyle;

  @override
  String toString() {
    return 'MarbleWithTimestamp{marble: $marble, timestamp: $timestamp}';
  }
}

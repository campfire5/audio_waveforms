// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  Offset totalBackDistance;
  Offset dragOffset;

  double spacing;

  int index;

  double initialPosition;

  double bottomPadding;

  List<double> waveData;

  double scaleFactor;

  double height;

  Paint wavePaint;
  LinePainter({
    required this.totalBackDistance,
    required this.dragOffset,
    required this.spacing,
    required this.index,
    required this.initialPosition,
    required this.bottomPadding,
    required this.waveData,
    required this.scaleFactor,
    required this.height,
    required this.wavePaint,
  });

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(
          -totalBackDistance.dx +
              dragOffset.dx +
              (spacing * index) -
              initialPosition,
          height - bottomPadding),
      Offset(
          -totalBackDistance.dx +
              dragOffset.dx +
              (spacing * index) -
              initialPosition,
          -(waveData[index] * scaleFactor) + height - bottomPadding),
      wavePaint,
    );
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return oldDelegate.height != height;
  }
}

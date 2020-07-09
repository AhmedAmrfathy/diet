import 'package:flutter/material.dart';
import 'dart:math';

class ForeGroundWidget extends CustomPainter {
  ForeGroundWidget();

  @override
  void paint(Canvas canvas, Size size) {
    Paint outercircle = Paint()
      ..strokeWidth = 7
      ..color = Color.fromRGBO(224, 224, 242, 1)
      ..style = PaintingStyle.stroke;
    Paint completearc = Paint()
      ..strokeWidth = 16
      ..color = Color.fromRGBO(72, 85, 206, 1)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radious = min(size.width / 2, size.height / 2) - 7;
    canvas.drawCircle(center, radious, outercircle);
    double angle = 2 * pi * (40 / 100);
    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radious),-pi / 2, angle, false,
        completearc);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
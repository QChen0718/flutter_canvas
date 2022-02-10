import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyFancyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    // final paint = Paint()
    //   ..strokeWidth = 5
    //   ..color = Colors.indigoAccent
    //   ..style = PaintingStyle.stroke;

    // final triangle = Path();
    // triangle.moveTo(150, 0);
    // canvas.drawPath(triangle, paint);
    // 圆圈
    // final paint = Paint()
    //   ..strokeWidth = 4
    //   ..color = Colors.blueAccent
    //   ..style = PaintingStyle.stroke;
    // const circleRadius = 75.0;
    // const circleCenter = Offset(200, 150);
    // canvas.drawCircle(circleCenter, circleRadius, paint);

    //  三角形,绘制的点的零点为新定义的点
    final paint = Paint()
      ..strokeWidth = 5
      ..color = Colors.indigoAccent
      ..style = PaintingStyle.stroke;
    final triangle = Path();
    triangle.moveTo(150, 0);
    triangle.relativeLineTo(100, 100);
    triangle.relativeLineTo(-150, 10);
    triangle.close();
    canvas.drawPath(triangle, paint);
    // 正方形
    final square1 = Path();
    square1.moveTo(50, 150);
    square1.relativeLineTo(100, 0);
    square1.relativeLineTo(0, 100);
    square1.relativeLineTo(-100, 0);
    square1.close();
    canvas.drawPath(square1, paint);

    const square2 = Rect.fromLTWH(200, 150, 100, 100);
    canvas.drawRect(square2, paint);

    final hexagon = Path()
      ..moveTo(175, 300)
      ..relativeLineTo(75, 50)
      ..relativeLineTo(0, 75)
      ..relativeLineTo(-75, 50)
      ..relativeLineTo(-75, -50)
      ..relativeLineTo(0, -75)
      ..close();
    canvas.drawPath(hexagon, paint);

    final cross = Path()
      ..moveTo(150, 500)
      ..relativeLineTo(50, 0)
      ..relativeLineTo(0, 50)
      ..relativeLineTo(50, 0)
      ..relativeLineTo(0, 50)
      ..relativeLineTo(-50, 0)
      ..relativeLineTo(0, 50)
      ..relativeLineTo(-50, 0)
      ..relativeLineTo(0, -50)
      ..relativeLineTo(-50, 0)
      ..relativeLineTo(0, -50)
      ..relativeLineTo(50, 0)
      ..close();
    canvas.drawPath(cross, paint);

    //  Drawing Ovals
    const ovalCenter = Offset(200, 200);
    final oval = Rect.fromCenter(center: ovalCenter, width: 150, height: 100);
    canvas.drawOval(oval, paint);

    var concentricCircleRadius = 100.0;
    const center = Offset(200, 500);
    while (concentricCircleRadius > 0) {
      canvas.drawCircle(center, concentricCircleRadius, paint);
      concentricCircleRadius -= 10;
    }
    final paint2 = Paint()
      ..strokeWidth = 5
      ..color = Colors.red
      ..style = PaintingStyle.stroke;
    //  arc 扇形
    const arcCenter = Offset(200, 80);
    final arcRect = Rect.fromCircle(center: arcCenter, radius: 75);
    final startAngle = degreesToRadians(10);
    final sweepAngle = degreesToRadians(90);
    canvas.drawArc(arcRect, startAngle, sweepAngle, false, paint2);

    //  曲线
    final paint3 = Paint()
      ..strokeWidth = 5
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke;
    final qCurve1 = Path()
      ..moveTo(50, 300)
      ..relativeQuadraticBezierTo(100, -100, 300, 0);
    canvas.drawPath(qCurve1, paint3);

    //  曲线
    final paint4 = Paint()
      ..strokeWidth = 5
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;
    final cCurve1 = Path()
      ..moveTo(50, 150)
      ..relativeCubicTo(50, -100, 250, -100, 300, 0);
    canvas.drawPath(cCurve1, paint4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

  double degreesToRadians(double degrees) {
    return (degrees * math.pi) / 180;
  }
}

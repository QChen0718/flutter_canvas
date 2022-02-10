import 'package:flutter/material.dart';

class BatteryPainter extends CustomPainter {
  final margin = 30.0;
  final padding = 10.0;
  final pinWidth = 22.0;
  final minCharge = 0.2;
  final double charge;
  final borderPaint = Paint()
    ..color = Colors.black
    ..strokeWidth = 4
    ..isAntiAlias = true
    ..style = PaintingStyle.stroke;

  final pinPaint = Paint()
    ..color = Colors.black
    ..isAntiAlias = true
    ..style = PaintingStyle.fill;

  final chargePaint = Paint()
    ..color = Colors.greenAccent[700]!
    ..isAntiAlias = true
    ..style = PaintingStyle.fill;

  BatteryPainter(this.charge);
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

  RRect _borderRRect(Size size) {
    final symmetricalMargin = margin * 2;
    final width = size.width - symmetricalMargin - padding - pinWidth;
    final height = width / 2;
    final top = (size.height / 2) - (height / 2);
    final radius = Radius.circular(height * 0.2);
    final bounds = Rect.fromLTWH(margin, top, width, height);
    return RRect.fromRectAndRadius(bounds, radius);
  }

  Rect _pinRect(RRect bdr) {
    final center = Offset(bdr.right + padding, bdr.top + (bdr.height / 2.0));
    final height = bdr.height * 0.38;
    final width = pinWidth * 2;
    return Rect.fromCenter(center: center, width: width, height: height);
  }
}

import 'package:flutter/material.dart';

class ShapeScreenCircle extends StatelessWidget {
  const ShapeScreenCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
          painter: MyPainter(),


    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


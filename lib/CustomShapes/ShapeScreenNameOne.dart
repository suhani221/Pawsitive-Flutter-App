import 'package:flutter/material.dart';

class ShapeScreenNameOne extends StatelessWidget {
  const ShapeScreenNameOne({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: MyPainter(),
        child: const SizedBox(
            width: 358,
            height: 196
        )
    );
  }
}

class MyPainter extends CustomPainter {
  @override


  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint.color = const Color(0xff665eff);
    path = Path();
    path.lineTo(size.width * 0.03, 0);
    path.cubicTo(size.width * 0.03, 0, size.width, 0, size.width, 0);
    path.cubicTo(0, 0, 0, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height, size.width, size.height);
    path.cubicTo(0, 0, 0, 0, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width * 0.22, size.height, size.width * 0.22, size.height);
    path.cubicTo(size.width * 0.1, size.height, 0, size.height * 0.82, 0, size.height * 0.59);
    path.cubicTo(0, size.height * 0.59, 0, size.height * 0.05, 0, size.height * 0.05);
    path.cubicTo(0, size.height * 0.02, size.width * 0.01, 0, size.width * 0.03, 0);
    path.cubicTo(size.width * 0.03, 0, size.width * 0.03, 0, size.width * 0.03, 0);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


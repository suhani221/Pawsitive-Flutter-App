import 'package:flutter/material.dart';

class shape_lower extends StatelessWidget {
  const shape_lower({super.key});

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

    paint.color = const Color(0xff1e5c65);
    path = Path();
    path.lineTo(0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(0, 0, 0, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height, size.width, size.height);
    path.cubicTo(0, 0, 0, 0, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width / 5, size.height, size.width / 5, size.height);
    path.cubicTo(size.width * 0.09, size.height, 0, size.height * 0.89, 0, size.height * 0.76);
    path.cubicTo(0, size.height * 0.76, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
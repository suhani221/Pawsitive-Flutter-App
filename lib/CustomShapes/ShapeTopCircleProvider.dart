import 'package:flutter/material.dart';

class ShapeTopCircleProvider extends StatelessWidget {

  const ShapeTopCircleProvider({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomPaint(
        painter: MyPainter(),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200
        )
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();


    // Path number 1


    paint.color = const Color(0xff2891ED);
    final double xScaling = size.width / 390;
    final double yScaling = size.height / 250;
    path.lineTo(0 * xScaling,218.191 * yScaling);
    path.cubicTo(0 * xScaling,218.191 * yScaling,0 * xScaling,0 * yScaling,0 * xScaling,0 * yScaling,);
    path.cubicTo(0 * xScaling,0 * yScaling,390 * xScaling,0 * yScaling,390 * xScaling,0 * yScaling,);
    path.cubicTo(390 * xScaling,0 * yScaling,390 * xScaling,123.366 * yScaling,390 * xScaling,123.366 * yScaling,);
    path.cubicTo(357.721 * xScaling,216.846 * yScaling,268.95 * xScaling,284 * yScaling,164.5 * xScaling,284 * yScaling,);
    path.cubicTo(103.234 * xScaling,284.085 * yScaling,44.3025 * xScaling,260.509 * yScaling,0 * xScaling,218.191 * yScaling,);
    path.cubicTo(0 * xScaling,218.191 * yScaling,0 * xScaling,218.191 * yScaling,0 * xScaling,218.191 * yScaling,);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
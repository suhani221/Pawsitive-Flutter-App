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


    paint.color = Color(0xff2891ED);
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(0 * _xScaling,218.191 * _yScaling);
    path.cubicTo(0 * _xScaling,218.191 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,390 * _xScaling,0 * _yScaling,390 * _xScaling,0 * _yScaling,);
    path.cubicTo(390 * _xScaling,0 * _yScaling,390 * _xScaling,123.366 * _yScaling,390 * _xScaling,123.366 * _yScaling,);
    path.cubicTo(357.721 * _xScaling,216.846 * _yScaling,268.95 * _xScaling,284 * _yScaling,164.5 * _xScaling,284 * _yScaling,);
    path.cubicTo(103.234 * _xScaling,284.085 * _yScaling,44.3025 * _xScaling,260.509 * _yScaling,0 * _xScaling,218.191 * _yScaling,);
    path.cubicTo(0 * _xScaling,218.191 * _yScaling,0 * _xScaling,218.191 * _yScaling,0 * _xScaling,218.191 * _yScaling,);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
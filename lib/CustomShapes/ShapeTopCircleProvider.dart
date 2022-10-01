import 'package:flutter/material.dart';

class ShapeTopCircleProvider extends StatelessWidget {
  var size, height, width;
  ShapeTopCircleProvider({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return CustomPaint(
        painter: MyPainter(width, height),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200
        )
    );
  }
}

class MyPainter extends CustomPainter {
  final double screenWidth;
  final double screenHeight;
  MyPainter(this.screenWidth, this.screenHeight);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();


    // Path number 1


    paint.color = Color(0xff2891ED);
    final double _xScaling = size.width / screenWidth;
    final double _yScaling = size.height / screenHeight;
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
import 'package:flutter/material.dart';

class ShapeWelcomeOne extends StatelessWidget {

  ShapeWelcomeOne({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomPaint(
        painter: MyPainter(),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100
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
    final double _xScaling = size.width / 390;
    final double _yScaling = size.height / 87;
    path.lineTo(80 * _xScaling,0 * _yScaling);
    path.cubicTo(80 * _xScaling,0 * _yScaling,390 * _xScaling,0 * _yScaling,390 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,390 * _xScaling,0 * _yScaling,);
    path.cubicTo(390 * _xScaling,0 * _yScaling,390 * _xScaling,87 * _yScaling,390 * _xScaling,87 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,390 * _xScaling,87 * _yScaling,);
    path.cubicTo(390 * _xScaling,87 * _yScaling,0 * _xScaling,87 * _yScaling,0 * _xScaling,87 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,87 * _yScaling,);
    path.cubicTo(0 * _xScaling,87 * _yScaling,0 * _xScaling,80 * _yScaling,0 * _xScaling,80 * _yScaling,);
    path.cubicTo(-5.410830008785422e-15 * _xScaling,35.81722001353654 * _yScaling,35.817220013536534 * _xScaling,8.116245013178133e-15 * _yScaling,80 * _xScaling,0 * _yScaling,);
    path.cubicTo(80 * _xScaling,0 * _yScaling,80 * _xScaling,0 * _yScaling,80 * _xScaling,0 * _yScaling,);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
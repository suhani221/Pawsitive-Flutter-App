import 'package:flutter/material.dart';

class ShapeWelcomeOne extends StatelessWidget {

  const ShapeWelcomeOne({super.key});

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


    paint.color = const Color(0xff2891ED);
    final double xScaling = size.width / 390;
    final double yScaling = size.height / 87;
    path.lineTo(80 * xScaling,0 * yScaling);
    path.cubicTo(80 * xScaling,0 * yScaling,390 * xScaling,0 * yScaling,390 * xScaling,0 * yScaling,);
    path.cubicTo(0 * xScaling,0 * yScaling,0 * xScaling,0 * yScaling,390 * xScaling,0 * yScaling,);
    path.cubicTo(390 * xScaling,0 * yScaling,390 * xScaling,87 * yScaling,390 * xScaling,87 * yScaling,);
    path.cubicTo(0 * xScaling,0 * yScaling,0 * xScaling,0 * yScaling,390 * xScaling,87 * yScaling,);
    path.cubicTo(390 * xScaling,87 * yScaling,0 * xScaling,87 * yScaling,0 * xScaling,87 * yScaling,);
    path.cubicTo(0 * xScaling,0 * yScaling,0 * xScaling,0 * yScaling,0 * xScaling,87 * yScaling,);
    path.cubicTo(0 * xScaling,87 * yScaling,0 * xScaling,80 * yScaling,0 * xScaling,80 * yScaling,);
    path.cubicTo(-5.410830008785422e-15 * xScaling,35.81722001353654 * yScaling,35.817220013536534 * xScaling,8.116245013178133e-15 * yScaling,80 * xScaling,0 * yScaling,);
    path.cubicTo(80 * xScaling,0 * yScaling,80 * xScaling,0 * yScaling,80 * xScaling,0 * yScaling,);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
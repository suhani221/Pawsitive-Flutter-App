import 'package:flutter/material.dart';

class ShapeSelectCityOne extends StatelessWidget {
  const ShapeSelectCityOne({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: MyPainter(),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 150
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


    paint.color = const Color(0xff2a91ea);
    path = Path();
    path.lineTo(0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(0, 0, 0, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height * 0.84, size.width, size.height * 0.84);
    path.cubicTo(size.width, size.height * 0.93, size.width * 0.97, size.height, size.width * 0.94, size.height);
    path.cubicTo(size.width * 0.94, size.height, size.width * 0.06, size.height, size.width * 0.06, size.height);
    path.cubicTo(size.width * 0.03, size.height, 0, size.height * 0.93, 0, size.height * 0.84);
    path.cubicTo(0, size.height * 0.84, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



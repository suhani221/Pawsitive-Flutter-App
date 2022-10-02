import 'package:flutter/material.dart';

class ShapeHomeScreen extends StatelessWidget {
  Color shapeColor; 
  ShapeHomeScreen({super.key, required this.shapeColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(
              10.0,
              5.0,
            ),
            blurRadius: 100.0,
            spreadRadius: 5.0,
          ), //BoxShadow
        ],
      ),
      child: CustomPaint(
          painter: MyPainter(shapeColor: shapeColor),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 351
          )
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  late Color shapeColor;
  MyPainter({required this.shapeColor});
  
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();


    // Path number 1


    paint.color = shapeColor;
    path = Path();
    final double xScaling = size.width / 390;
    final double yScaling = size.height / 351;
    path.lineTo(0 * xScaling,0 * yScaling);
    path.cubicTo(0 * xScaling,0 * yScaling,390 * xScaling,0 * yScaling,390 * xScaling,0 * yScaling,);
    path.cubicTo(390 * xScaling,0 * yScaling,390 * xScaling,351 * yScaling,390 * xScaling,351 * yScaling,);
    path.cubicTo(390 * xScaling,351 * yScaling,80 * xScaling,351 * yScaling,80 * xScaling,351 * yScaling,);
    path.cubicTo(35.81722001353654 * xScaling,351 * yScaling,5.410830008785422e-15 * xScaling,315.18277998646346 * yScaling,0 * xScaling,271 * yScaling,);
    path.cubicTo(0 * xScaling,271 * yScaling,0 * xScaling,0 * yScaling,0 * xScaling,0 * yScaling,);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



import 'package:flutter/material.dart';

class ShapeHomeScreen extends StatelessWidget {
  Color shapeColor; 
  ShapeHomeScreen({super.key, required this.shapeColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: const Offset(
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
    final double _xScaling = size.width / 390;
    final double _yScaling = size.height / 351;
    path.lineTo(0 * _xScaling,0 * _yScaling);
    path.cubicTo(0 * _xScaling,0 * _yScaling,390 * _xScaling,0 * _yScaling,390 * _xScaling,0 * _yScaling,);
    path.cubicTo(390 * _xScaling,0 * _yScaling,390 * _xScaling,351 * _yScaling,390 * _xScaling,351 * _yScaling,);
    path.cubicTo(390 * _xScaling,351 * _yScaling,80 * _xScaling,351 * _yScaling,80 * _xScaling,351 * _yScaling,);
    path.cubicTo(35.81722001353654 * _xScaling,351 * _yScaling,5.410830008785422e-15 * _xScaling,315.18277998646346 * _yScaling,0 * _xScaling,271 * _yScaling,);
    path.cubicTo(0 * _xScaling,271 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



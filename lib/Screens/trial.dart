//code optimisation done
import 'package:flutter/material.dart';
import '../GlobalCustomWidgets/top_app_bar.dart';
import '../CustomShapes/ShapeHomeScreenOne.dart';

class HomeScreenT extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
                child:
                ShapeHomeScreen(shapeColor: const Color(0xFF52AFFF),)),
            Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: topAppBar()),
            Positioned(
                top: 150,
                left: 0,
                right: 0,
                child:
                ShapeHomeScreen(shapeColor: const Color(0xFF5260FF),)),
          ],
        ),
      ),
    );
  }
}
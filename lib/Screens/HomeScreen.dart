//code optimisation done
import 'package:flutter/material.dart';
import '../../GlobalCustomWidgets/navigation_button.dart';
import '../../GlobalCustomWidgets/custom_poviders.dart';
import '../CustomShapes/ShapeTopCircleProvider.dart';
import '../CustomShapes/ShapeSelectCityOne.dart';
import '../homescreen/home.dart';
import '../CustomShapes/ShapeHomeScreenOne.dart';

class HomeScreen extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: [
          Positioned(
              child:
              ShapeHomeScreen(shapeColor: const Color(0xFF52AFFF),)),
            Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: scroll()),
            Positioned(
              top: 150,
                left: 0,
                right: 0,
                child:
                ShapeHomeScreen(shapeColor: const Color(0xFF5260FF),)),
            Positioned(
                top: 250,
                left: 0,
                right: 0,
                child:
                ShapeHomeScreen(shapeColor: const Color(0xFFFF52FC),)),

        ]),
    );
  }
}

//code optimisation done
import 'package:flutter/material.dart';
import '../GlobalCustomWidgets/top_app_bar.dart';
import '../CustomShapes/ShapeHomeScreenOne.dart';
import '../CustomShapes/ShapeHomeScreenTop.dart';
import '../GlobalCustomWidgets/home_screen_card.dart';

class HealthScreen extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
          child: SingleChildScrollView(
            child: Stack(
                clipBehavior: Clip.none,
                children: [
                Positioned(
                    child:
                    Container(
                      height: 920,
                    )
                ),
                  Positioned(
                      top: 650,
                      child:
                      ShapeHomeScreen(shapeColor: const Color(0xFF18568b),)),
                  Positioned(
                      top: 500,
                      child:Stack(
                          children: [
                            ShapeHomeScreen(
                              shapeColor: const Color(0xFF1c6fb7),
                            ),
                            Positioned(
                                top: 150,
                                left: 50,
                                child: homeScreenCardDetails('Article'))
                          ]
                      ),

                  ),

                  Positioned(
                      top: 250,
                      child:
                      Stack(
                          children: [
                            ShapeHomeScreen(
                              shapeColor: const Color(0xFF2a91ea),
                            ),
                            Positioned(
                              top: 150,
                                left: 50,
                                child: homeScreenCardDetails('Appointment'))
                          ]
                      ),
                  ),
                  Positioned(
                    top: 0,
                      child:
                      ShapeHomeScreen(
                        shapeColor: const Color(0xFF52AFFF),
                      ),
                  ),
                  Positioned(
                    top: 0,
                      child: ShapeHomeScreenTop()),
                  Positioned(
                      top: 50,
                      child: Container(
                          child: topAppBar()))
              ]
            ),
          ),
        ),]
        ),
      ),
    );
  }
}

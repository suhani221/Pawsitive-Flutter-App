//code optimisation done
import 'package:flutter/material.dart';
import '../GlobalCustomWidgets/top_app_bar.dart';
import '../CustomShapes/ShapeHomeScreenOne.dart';
import '../CustomShapes/ShapeHomeScreenTop.dart';
import '../GlobalCustomWidgets/home_screen_card.dart';

class HomeScreen extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
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
                                child: goToArticle(
                                    'Article',
                                    'https://www.forbes.com/sites/joanverdon/2022/09/12/pet-insurer-creates-platform-that-predicts-your-dogs-medical-future/?sh=8a1382f1d6df',
                                'Pet Insurer Creates',  'Platform'))
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
                              child: goToArticle(
                                  'Article',
                                  'https://www.forbes.com/sites/joanverdon/2022/09/12/pet-insurer-creates-platform-that-predicts-your-dogs-medical-future/?sh=8a1382f1d6df',
                                  'Pet Insurer Creates',  'Platform'))
                        ]
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child:
                    Stack(
                        children: [ShapeHomeScreen(
                          shapeColor: const Color(0xFF52AFFF),
                        ),
                          Positioned(
                              top: 170,
                              left: 50,
                              child: homeScreenCardDetails('Appointment', context))
                        ]
                    ),
                  ),
                  const Positioned(
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

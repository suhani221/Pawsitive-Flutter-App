//code optimisation done
import 'package:flutter/material.dart';
import '../GlobalCustomWidgets/top_app_bar.dart';
import '../CustomShapes/ShapeHomeScreenOne.dart';
import '../CustomShapes/ShapeHomeScreenTop.dart';
import '../GlobalCustomWidgets/home_screen_card.dart';

class ProfileScreen extends StatelessWidget {
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
                                  top: 170,
                                  left: 50,
                                  child: profileDetails('Timeline', 'Vaccination Status - Completed', 'Last Appointment - 11/09/2022', 'Time - 5:00 PM', context))
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
                                  top: 170,
                                  left: 50,
                                  child: profileDetails('About Me', 'Breed - Golden Retriever', 'Age - 2.5 Years', 'Weight - 32 Kg', context))]
                        ),
                      ),
                      Positioned(
                        top: 70,
                        child:
                        Image.asset(
                          'lib/assets/profilePicture.png',
                          width: MediaQuery.of(context).size.width,
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
            ),
            ]
        ),
      ),
    );
  }
}

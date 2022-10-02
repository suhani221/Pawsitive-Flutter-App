//code optimisation done
import 'package:flutter/material.dart';
import 'package:hackathon/Screens/choose_doc.dart';
import '../GlobalCustomWidgets/top_app_bar.dart';
import '../CustomShapes/ShapeHomeScreenOne.dart';
import '../CustomShapes/ShapeHomeScreenTop.dart';
import '../GlobalCustomWidgets/home_screen_card.dart';
import 'package:flutter/material.dart';
import '../CustomShapes/ShapeSelectCityOne.dart';

class AppointmentScreen extends StatelessWidget {
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
            Stack(
              clipBehavior: Clip.none, children: [
              Positioned(
                  child: ShapeHomeScreenTop()),
              Positioned(
                  top: 50,
                  child: Container(
                      child: topAppBar()))
            ],
            ),
            Expanded(
          child: SingleChildScrollView(
            child: choose_doctor(),
          ),
        ),]
        ),
      ),
    );
  }
}




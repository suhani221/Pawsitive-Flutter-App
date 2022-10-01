import 'package:flutter/material.dart';
import '../GlobalCustomWidgets/home_screen_card.dart';

class widgetTesting extends StatelessWidget {
  const widgetTesting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50,),
          homeScreenCardDetails('Appointment', context),
        ],
      ),
    );
  }
}

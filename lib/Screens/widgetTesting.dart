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
          const SizedBox(height: 50,),
        goToArticle(
            'Article',
            'https://www.forbes.com/sites/joanverdon/2022/09/12/pet-insurer-creates-platform-that-predicts-your-dogs-medical-future/?sh=8a1382f1d6df',
            'Pet Insurer Creates Platform',  'Predict Your Dog’s Medical Future'),
        ],
      ),
    );
  }
}

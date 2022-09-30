import 'package:flutter/material.dart';

import 'package:hackathon/screens/service_providers.dart';
import 'screens/sign_in.dart';
import 'screens/sign_up.dart';
import 'homescreen/home.dart';
import 'CustomShapes/ShapeScreenNameOne.dart';
import 'Screens/GetStarted.dart';
import 'Screens/SelectLocation.dart';


void main() => runApp(MaterialApp(
  home: PlakshaUMS(),
));

class PlakshaUMS extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/login': (context) =>sign_in(),
        '/signup': (context) =>sign_up(),
        '/provider': (context) =>provider(),
        '/home': (context) =>scroll(),
      },
    );
  }
}

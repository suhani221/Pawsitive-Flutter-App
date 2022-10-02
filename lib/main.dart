import 'package:flutter/material.dart';
import 'package:hackathon/Screens/HomeScreen.dart';
import 'package:hackathon/screens/ServiceProviders.dart';
import 'package:hackathon/screens/choose_doc.dart';
import 'CustomShapes/ShapeTopCircleProvider.dart';
import 'Screens/trial.dart';
import 'screens/sign_in.dart';
import 'screens/sign_up.dart';
import 'homescreen/home.dart';
import 'CustomShapes/ShapeScreenNameOne.dart';
import 'Screens/GetStarted.dart';
import 'Screens/SelectLocation.dart';
import 'Screens/WelcomeScreen.dart';
import 'CustomShapes/ShapeWelcomeOne.dart';


void main() => runApp(MaterialApp(
  home: Hack(),
));

class Hack extends StatelessWidget {
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
        '/get_started': (context) => GetStarted(),
        '/select_location': (context) => SelectLocation(),
        '/welcome': (context) => WelcomeScreen(),
        '/home': (context) => choose_doc(),

      },
    );
  }
}
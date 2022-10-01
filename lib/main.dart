import 'package:flutter/material.dart';
import 'package:hackathon/screens/appointment.dart';
import 'package:hackathon/screens/choose_doc.dart';
import 'package:hackathon/screens/doctor_detail.dart';
import 'package:hackathon/screens/service_providers.dart';
import 'package:hackathon/screens/settings_page.dart';
import 'package:hackathon/screens/test.dart';
import 'CustomShapes/ShapeScreenCircle.dart';
import 'screens/sign_in.dart';
import 'screens/sign_up.dart';
import 'homescreen/home.dart';
import 'CustomShapes/ShapeScreenNameOne.dart';
import 'Screens/GetStarted.dart';
import 'Screens/SelectLocation.dart';


void main() => runApp(MaterialApp(
  home: Hack(),
));

class Hack extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/select_location',
        routes: {
          '/login': (context) => sign_in(),
          '/signup': (context) => sign_up(),
          '/provider': (context) => provider(),
          '/home': (context) => scroll(),
          '/get_started': (context) => GetStarted(),
          '/select_location': (context) => settings(),
          '/appointment': (context) => test()

        }
    );
  }
}

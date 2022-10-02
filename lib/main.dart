import 'package:flutter/material.dart';
import 'package:hackathon/Screens/HomeScreen.dart';
import 'package:hackathon/screens/ServiceProviders.dart';
import 'package:hackathon/screens/choose_doc.dart';
import 'screens/sign_in.dart';
import 'screens/sign_up.dart';
import 'Screens/GetStarted.dart';
import 'Screens/SelectLocation.dart';
import 'Screens/WelcomeScreen.dart';
import 'Screens/widgetTesting.dart';
import 'Screens/AppointmentScreen.dart';
import 'Screens/HealthScreen.dart';
import "Screens/ProfileScreen.dart";
import "Screens/doctor_detail.dart";
import 'Screens/timeline.dart';



void main() => runApp(MaterialApp(
  home: Hack(),
));

class Hack extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/welcome',
      routes: {
        '/login': (context) =>sign_in(),
        '/signup': (context) =>sign_up(),
        '/provider': (context) =>provider(),
        '/get_started': (context) => const GetStarted(),
        '/select_location': (context) => const SelectLocation(),
        '/welcome': (context) => WelcomeScreen(),
        '/home_screen': (context) =>HomeScreen(),
        '/appointment_screen': (context) => AppointmentScreen(),
        '/health_screen': (context) => HealthScreen(),
        '/profile_screen': (context) => ProfileScreen(),
        '/widget_test': (context) => const widgetTesting(),
        '/choose_screen': (context) => const choose_doctor(),
        '/doctor_detail': (context) => const SliverDoctorDetail(),
        '/vaccine_timeline': (context) => timeline(),
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'screens/sign_in.dart';

void main() => runApp(MaterialApp(
  home: PlakshaUMS(),
));

class PlakshaUMS extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) =>LoginLoading() ,
      },
    );
  }
}

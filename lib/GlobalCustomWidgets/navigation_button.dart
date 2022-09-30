import 'package:flutter/material.dart';

Container NavigationButton(String ButtonName, context, String NavigationRoute) {
  return Container(
    height: 50,
    width: 370,
    child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, NavigationRoute);
        },
        child: Text(
          ButtonName,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Color(0xFF3AB9CB)),
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF3AB9CB)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                  side: BorderSide(color: Colors.white)),
            ))),
  );
}

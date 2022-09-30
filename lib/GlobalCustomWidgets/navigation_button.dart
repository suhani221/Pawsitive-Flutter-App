import 'package:flutter/material.dart';

Container NavigationButton(String ButtonName, context, String NavigationRoute,double height,double width) {
  return Container(
    height: height,
    width: width,
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
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Color(0xFF3AB9CB))),
            ))),
  );
}

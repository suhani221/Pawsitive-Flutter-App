import 'package:flutter/material.dart';

SizedBox NavigationButton(String ButtonName, context, String NavigationRoute,double height,double width) {
  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, NavigationRoute);
        },
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(const Color(0xff2891ED)),
            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff2891ED)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(color: Color(0xff2891ED))),
            )),
        child: Text(
          ButtonName,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        )),
  );
}

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

ConvexAppBar bottomBar(String logo) {
  return ConvexAppBar(
    style: TabStyle.fixedCircle,
    activeColor: Colors.black,
    elevation: 1.0,
    top: -30,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: <Color>[Colors.red, Colors.white],
    ),
    backgroundColor: Colors.white38,
    items: [
      TabItem(icon: Image.asset(logo), title: 'Discovery'),
    ],
  );
}

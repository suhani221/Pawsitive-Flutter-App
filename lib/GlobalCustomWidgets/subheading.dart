import 'package:flutter/material.dart';

Row subheading(String subheading, context) {
  return Row(
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.1,
      ),
      Text(subheading,
          style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 28,
              fontFamily: 'Lato',
              color: Colors.white)),
    ],
  );
}

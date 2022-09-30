import 'package:flutter/material.dart';

Column heading(String heading, context) {
  return Column(
    children: [
      SizedBox(height: (MediaQuery.of(context).size).height * 0.09),
      Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          Text(heading,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'Lato',
                  color: Colors.white)),
        ],
      ),
    ],
  );
}

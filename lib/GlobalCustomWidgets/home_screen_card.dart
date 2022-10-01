import 'package:flutter/material.dart';

Column homeScreenCardDetails(String heading, context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 23.0,
          width: 120.0,
          color: Colors.transparent,
          child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Center(
                child: Text(heading,
                  style: const TextStyle(color: Colors.black, fontSize:14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
              )),
        ),
        SizedBox(height: 20,),
        Text('TUESDAY 5:30PM',
          style: const TextStyle(color: Colors.white70, fontSize:12),
          textAlign: TextAlign.center,),
        Text('DR. XYZ',
          style: const TextStyle(color: Colors.white, fontSize:24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
        Text('Pet Clinic',
          style: const TextStyle(color: Colors.white, fontSize:24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
      ],);
  }


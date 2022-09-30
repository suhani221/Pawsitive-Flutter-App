import 'package:flutter/material.dart';

Container CustomTextField(String FieldName, bool obscureBool) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Material(
        elevation: 5.0,
        shadowColor: Colors.white,
        child: TextField(
          style: TextStyle(color: Colors.black),
          obscureText: obscureBool,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(25),
            ),
            hintText: FieldName,
            hintStyle: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ),
  );
}

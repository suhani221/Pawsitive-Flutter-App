import 'package:flutter/material.dart';

Container CustomTextField(String FieldName, bool obscureBool) {
  return Container(

    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Material(
        borderRadius: BorderRadius.circular(18.0),
        elevation: 2.0,
        shadowColor: Colors.white,
        child: TextField(
          style: const TextStyle(color: Colors.black),
          obscureText: obscureBool,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(25),
            ),
            hintText: FieldName,

            hintStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ),
  );
}

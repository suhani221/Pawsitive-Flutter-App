import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container CustomField(String ButtonName,String asset) {
  return Container(
    height: 60,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Material(
        child:ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(2),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shadowColor:  MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.white)),
                )),
            child: Row(
              children: <Widget>[
                SizedBox(width: 80,),
                SvgPicture.asset(asset),
                Text(
                    ButtonName,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Color(0xFF3F4079))
                ),
              ],
            )),
        ),
      ),
    );
}


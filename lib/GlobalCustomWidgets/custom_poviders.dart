import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container CustomField(String ButtonName,String asset) {
  return Container(
    height: 51,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(25.0)),
        elevation: 3,
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
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.white)),
                )),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

                SvgPicture.asset(asset),
                Text(
                    ButtonName,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Color(0xFF3F4079))
                ),
              ],
            )),
        ),
      ),
    );
}


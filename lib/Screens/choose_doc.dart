//code optimisation done
import 'package:flutter/material.dart';
import '../../GlobalCustomWidgets/navigationtop_button.dart';
import '../../GlobalCustomWidgets/custom_textfield.dart';
import '../GlobalCustomWidgets/doc_ard.dart';
import '../GlobalCustomWidgets/navigation_button.dart';

class choose_doc extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: height * 0.15),
            Padding(
              padding: const EdgeInsets.fromLTRB(76, 6, 10, 6),
              child: Text('Welcome Back!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Color(0xFF78849E),
                ),
              ),
            ),
            SizedBox(height: height * 0.035),
            doc_card(),
            SizedBox(
              height: height * 0.08,
            ),
            //continue with and microsoft login
            Center(
              child: Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 60.0, right: 10.0),
                      child: Divider(
                        thickness: 2.5,
                        color: Colors.white38,
                        height: 50,
                      )),
                ),

                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 60.0),
                      child: Divider(
                        thickness: 2.5,
                        color: Colors.white38,
                        height: 50,
                      )),
                ),

              ]),
            )
          ],
        ),
      ),
    );
  }
}
class Utils {
  static Widget circularImageWithBorder(String imgPath, double rad, double borderWidth, Color borderColor) {
    return CircleAvatar(
        radius: rad + borderWidth,
        backgroundColor: borderColor,
        child: CircleAvatar(
          backgroundImage: AssetImage(imgPath),
          radius: rad,
        ));
  }
}


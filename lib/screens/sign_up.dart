//code optimisation done
import 'package:flutter/material.dart';
import '../../GlobalCustomWidgets/navigation_button.dart';
import '../../GlobalCustomWidgets/custom_textfield.dart';

class sign_up extends StatelessWidget {
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
            const Padding(
              padding: EdgeInsets.fromLTRB(126, 6, 10, 6),
              child: Text('Welcome!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Color(0xFF78849E),
                ),
              ),
            ),
            SizedBox(height: height * 0.035),
            CustomTextField('  Name', false),
            SizedBox(
              height: height * 0.04,
            ),
            CustomTextField('  Email', true),
            SizedBox(
              height: height * 0.04,
            ),
            CustomTextField('  Password', true),
            SizedBox(
              height: height * 0.06,
            ),
            Center(
              child: NavigationButton("CONTINUE", context, "/login",54,340),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Center(
              child: NavigationButton("SIGN UP VIA A DIFFERENT METHOD", context, "/provider",54,340),
            ),
            //continue with and microsoft login
            Center(
              child: Row(children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 60.0, right: 10.0),
                      child: const Divider(
                        thickness: 2.5,
                        color: Colors.white38,
                        height: 50,
                      )),
                ),

                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 60.0),
                      child: const Divider(
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

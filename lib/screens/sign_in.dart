//code optimisation done
import 'package:flutter/material.dart';
import '../../GlobalCustomWidgets/navigation_button.dart';
import '../../GlobalCustomWidgets/custom_textfield.dart';

class LoginLoading extends StatelessWidget {
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
            //plaksha university logo
            //Center(
            //  child: Image(
            //      height: height * 0.15,
             //     image: AssetImage('')),
            //),
            SizedBox(
              height: height * 0.1,
            ),
            CustomTextField('Email Address', false),
            SizedBox(
              height: height * 0.04,
            ),
            CustomTextField('Password', true),
            SizedBox(
              height: height * 0.06,
            ),
            Center(
              child: NavigationButton("CONTINUE", context, "/logging"),
            ),
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
                Text('or continue with',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        fontFamily: 'Lato',
                        color: Colors.white38)),
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
            ),
           // Center(
            //  child: Image(
             //     height: height * 0.1,
             //     width: 80,
            //      image: AssetImage('')),
           // ),
          ],
        ),
      ),
    );
  }
}

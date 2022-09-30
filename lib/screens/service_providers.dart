//code optimisation done
import 'package:flutter/material.dart';
import '../../GlobalCustomWidgets/navigation_button.dart';
import '../../GlobalCustomWidgets/custom_poviders.dart';

class provider extends StatelessWidget {
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
              padding: const EdgeInsets.fromLTRB(126, 6, 10, 6),
              child: Text('Temp Name',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: height * 0.035),
            CustomField('  Mobile Number', "lib/assets/cellphone.svg"),
            SizedBox(
              height: height * 0.04,
            ),
            CustomField('  Facebook', "lib/assets/facebook.svg"),
            SizedBox(
              height: height * 0.04,
            ),
            CustomField('  Google', "lib/assets/google.svg"),
            SizedBox(
              height: height * 0.04,
            ),

            Center(
              child: Text("By continuing,you agree to Terms & Conditions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.grey
                  ,
                ),),
            )
            //continue with and microsoft login

          ],
        ),
      ),
    );
  }
}

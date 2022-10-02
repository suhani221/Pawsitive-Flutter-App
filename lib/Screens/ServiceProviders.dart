//code optimisation done
import 'package:flutter/material.dart';
import '../../GlobalCustomWidgets/custom_poviders.dart';
import '../CustomShapes/ShapeTopCircleProvider.dart';

class provider extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: const [
                Positioned(
                    child: ShapeTopCircleProvider()
                ),
                Positioned(
                  top: 100,
                  child: Center(
                    child: Text('Pawsitive',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.white,
                    ),
                ),
                  ),)
              ],
            ),

            SizedBox(height: height * 0.1),
            CustomField('  Mobile Number', "lib/assets/cellphone.svg"),
            SizedBox(
              height: height * 0.05,
            ),
            CustomField('  Facebook', "lib/assets/facebook.svg"),
            SizedBox(
              height: height * 0.05,
            ),
            CustomField('  Google', "lib/assets/google.svg"),
            SizedBox(
              height: height * 0.05,
            ),
            const Center(
              child: Text("By continuing, you agree to Terms & Conditions",
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

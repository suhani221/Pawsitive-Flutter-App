//code optimisation done
import 'package:flutter/material.dart';
import '../../GlobalCustomWidgets/navigationtop_button.dart';
import '../../GlobalCustomWidgets/custom_textfield.dart';
import '../GlobalCustomWidgets/navigation_button.dart';
import 'appointment.dart';

class test extends StatelessWidget {
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

              Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
                Container(
                      margin: EdgeInsets.only(top: 30),
                      width: double.infinity,
                      child: Card(
                          color: Color(0xffeeeeee),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 40, bottom: 0, left: 10, right: 10),
                                child: Column(
                                  children: <Widget>[
                                    Text("Dr. Maseed", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                    Text("Dr. Maseed is a radiation oncologist in Indianapolis, Indiana and is affiliated with multiple hospitals in the area. He has been in practice for more than 20 years.", style: TextStyle()),
                                    ButtonBar(children: <Widget>[
                                      ElevatedButton(child: Text("APPOINTMENT", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), onPressed: (){},)
                                    ],)
                                  ],
                                ),
                              )
            ],
          )),
    ),
    Utils.circularImageWithBorder(
    "assets/images/maseed.png", 30, 2, Colors.black),
    ],
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

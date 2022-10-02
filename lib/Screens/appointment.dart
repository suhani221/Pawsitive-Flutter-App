// main.dart
import 'package:flutter/material.dart';
import '../CustomShapes/ShapeSelectCityOne.dart';

class appointment extends StatelessWidget {
  const appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none, children: [
            Positioned(
                child: Container(
                    child: const ShapeSelectCityOne())),
            Positioned(
              top: 50,
              left: 5,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.close_rounded, size: 30,),
                    color: Colors.white,
                    onPressed: () {},
                  ),

                ],
              ),
            ),
            Positioned(
              top: 120,
              child:Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: double.infinity,
                    child: Card(
                        color: const Color(0xffeeeeee),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 40, bottom: 0, left: 10, right: 10),
                              child: Column(
                                children: <Widget>[
                                  const Text("Dr. Maseed", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                  const Text("Dr. Maseed is a radiation oncologist in Indianapolis, Indiana and is affiliated with multiple hospitals in the area. He has been in practice for more than 20 years.", style: TextStyle()),
                                  ButtonBar(children: <Widget>[
                                    ElevatedButton(child: const Text("APPOINTMENT", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), onPressed: (){},)
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
            )
          ],
          ),
          const SizedBox(height: 40,),
        ],
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

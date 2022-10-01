import 'package:flutter/material.dart';

import '../screens/appointment.dart';

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          height: 210,
          child: Card(
            elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 60, bottom: 0, left: 10, right: 10),
                    child: Column(
                      children: <Widget>[
                        Text("Dr. ABC", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Clinic Fee Rs 500", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                            SizedBox(width: 150,),
                            Text("9:00-17:00", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Image.asset("lib/assets/pic1.png",height: 85,),

                            Image.asset("lib/assets/pic2.png",height: 85,),


                            Image.asset("lib/assets/pic3.png",height: 85,),
                            Image.asset("lib/assets/pic1.png",height: 85,),



                          ],
                        ),

                      ],
                    ),
                  )
                ],
              )),
        ),
        Utils.circularImageWithBorder(
            "lib/assets/doc.png", 42, 1, Colors.white),
      ],
    );

  }
}

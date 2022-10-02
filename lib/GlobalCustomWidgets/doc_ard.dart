import 'package:flutter/material.dart';

import '../screens/appointment.dart';

class doc_card extends StatefulWidget {
  const doc_card({super.key});

  @override
  State<doc_card> createState() => _doc_cardState();
}

class _doc_cardState extends State<doc_card> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 18,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 0, left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Utils.circularImageWithBorder(
                                  "lib/assets/doc.png", 52, 1, Colors.transparent),
                           SizedBox(width: 30,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dr. ABC", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 20,),
                                  Container(
                                   padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12)),
                                    border: Border.all(color: Colors.grey),
                                    ),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
    Text("MBBS,DOMS,MS-Opthalmology", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.grey),),
    Text("Opthamalogist", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.grey),),
    Text("26 Years of Experience", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.grey),)
                                      ],
                                    )
                                  )
                                ],
                              ),
  ]
                    ),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Text("CLOSED TODAY", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.red),),
                                  SizedBox(width: 45,),
                                  Text("9:30AM-08:00PM", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                                  SizedBox(width: 45,),

                                  Container(
                                    height: 55,
                                    child: ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      elevation: 0,
                                      // Background color
                                    ),
                                    child:Image.asset("lib/assets/message.png")),
                                  )




                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ],
    );

  }
}

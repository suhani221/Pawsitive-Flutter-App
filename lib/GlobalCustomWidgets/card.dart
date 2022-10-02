import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          margin: const EdgeInsets.only(top: 30),
          width: double.infinity,
          height: 220,
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
                    padding: const EdgeInsets.only(top: 60, bottom: 0, left: 10, right: 10),
                    child: Column(
                      children: <Widget>[
                        const Text("Dr. ABC", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Clinic Fee Rs 500", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                            Text("9:00-17:00", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Image.asset("lib/assets/pic1.png",height: 85,),

                            Image.asset("lib/assets/pic2.png",height: 85,),


                            Image.asset("lib/assets/pic3.png",height: 85,),



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



class card2 extends StatefulWidget {
  @override
  _cardState2 createState() => _cardState2();
}

class _cardState2 extends State<card2> {
  var currentDate = DateTime.now();

  void _incrementCounter() {
    setState(() {
      currentDate = currentDate.add(const Duration(days: 1));
      print(currentDate);
    });
  }

  void _decrementCounter() {
    setState(() {
      currentDate = currentDate.subtract(const Duration(days: 1));
      print(currentDate);
    });}
    @override
    Widget build(BuildContext context) {
      return Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 90),
            width: double.infinity,
            height: 500,
            child: Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 60, bottom: 0, left: 10, right: 10),
                      child: Row(
                        children: [
                          Utils.circularImageWithBorder(
                              "lib/assets/doc.png", 42, 1, Colors.white),
                          Column(
                            children: const <Widget>[
                              Text("Dr. ABC", style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),),
                              Text("B.Sc,MBBS", style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * 0.05),
                      child: const Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery
                              .of(context)
                              .size
                              .width * 0.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DateFormat.yMMMMd().format(currentDate),
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily: 'Lato'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: _decrementCounter,
                                icon: const Icon(Icons.remove_circle),
                                color: Colors.black,
                                iconSize: 20,
                              ),
                              IconButton(
                                onPressed: _incrementCounter,
                                icon: const Icon(Icons.add_circle),
                                color: Colors.black,
                                iconSize: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 3,
                      child: Row(
                       children: [
                         ElevatedButton( onPressed: () {  },
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.white, // Background color
                           ),
                           child: const Text("10:00",style: TextStyle(
                               fontWeight: FontWeight.w500,
                               fontSize: 20,
                               color: Colors.black,
                               fontFamily: 'Lato'),),
                         ),
                         const SizedBox(width: 20,),
                         ElevatedButton( onPressed: () {  },
                           child: const Text("11:00"),
                         ),
                         const SizedBox(width: 20,),
                         ElevatedButton( onPressed: () {  },
                           child: const Text("12:00"),
                          ),
                       ]
                      )
                    )
                  ],
                )),
          ),

        ],
      );
    }
  }



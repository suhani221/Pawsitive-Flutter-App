import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class scroll extends StatefulWidget {
  @override
  _scrollState createState() => _scrollState();
}

class _scrollState extends State<scroll> {
  int _currentIndex=0;

  List cardList=[
    Item2(),
    Item3(),

  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 100.0,
          viewportFraction: 0.4,
          aspectRatio: 0.5,
          pageSnapping: true,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        items: cardList.map((card){
          return Builder(
              builder:(BuildContext context){
                return Container(
                  height: MediaQuery.of(context).size.height*0.30,
                  width: MediaQuery.of(context).size.width,
                  child: Card(

                      shape: const CircleBorder(),
                      color: Colors.blue[100],
                      child: card
                  )
                );
              }
          );
        }).toList(),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(), primary: Colors.white),
      onPressed: () {},
      child: Icon(Icons.home,color: Colors.black,size: 54,),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(), primary: Colors.red),
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: const Text(
          'I ',
          style: TextStyle(fontSize: 24),
        ),
      ),
      onPressed: () {},
    );
  }
}


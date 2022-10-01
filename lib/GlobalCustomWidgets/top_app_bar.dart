import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class scroll extends StatefulWidget {
  @override
  _scrollState createState() => _scrollState();
}

class _scrollState extends State<scroll> {
  int _currentIndex=0;

  List cardList=[
    ProfileView(),
    HomeViewNew(),
    HealthView(),
    AppointmentView(),

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
          height: 80.0,
          viewportFraction: 0.3,
          aspectRatio: 0.5,
          pageSnapping: true,
          enableInfiniteScroll: false,
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

class ProfileView extends StatelessWidget {
  const ProfileView({ Key? key}) : super(key: key);

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

class HomeViewNew extends StatelessWidget {
  const HomeViewNew({ Key? key}) : super(key: key);

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

class HealthView extends StatelessWidget {
  const HealthView({ Key? key}) : super(key: key);

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

class AppointmentView extends StatelessWidget {
  const AppointmentView({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(), backgroundColor: Colors.white),
      onPressed: () {},
      child: Icon(Icons.home,color: Colors.black,size: 54,),
    );
  }
}

class HomeViewOld extends StatelessWidget {
  const HomeViewOld({ Key? key}) : super(key: key);

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
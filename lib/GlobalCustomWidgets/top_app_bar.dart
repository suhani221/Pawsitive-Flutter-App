import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class topAppBar extends StatefulWidget {
  @override
  _topAppBarState createState() => _topAppBarState();
}

class _topAppBarState extends State<topAppBar> {
  int _currentIndex=0;

  List cardList=[
    const ProfileView(),
    const HomeViewNew(),
    const HealthView(),
    const AppointmentView(),

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
    return  SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 70.0,
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
                return SizedBox(
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

class ProfileView extends StatefulWidget {
  const ProfileView({ Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: Colors.white),
        onPressed: () {
          Navigator.pushNamed(context, '/profile_screen');
        },

        child: Image.asset('lib/assets/profile.png'),
      ),
    );
  }
}

class HomeViewNew extends StatefulWidget {
  const HomeViewNew({ Key? key}) : super(key: key);

  @override
  State<HomeViewNew> createState() => _HomeViewNewState();
}

class _HomeViewNewState extends State<HomeViewNew> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(), backgroundColor: Colors.white),
      onPressed: () {
        Navigator.pushNamed(context, '/home_screen');
      },

      child: SizedBox(
          height: 32,
          width: 32,
          child: Image.asset('lib/assets/home.png')),
    );
  }
}

class HealthView extends StatelessWidget {
  const HealthView({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(), backgroundColor: Colors.white),
      onPressed: () {
        Navigator.pushNamed(context, '/health_screen');
        },
      child: SizedBox(
          height: 32,
          width: 32,
          child: Image.asset('lib/assets/heart.png')),
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
      onPressed: () {
        Navigator.pushNamed(context, '/choose_screen');
      },
      child: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset('lib/assets/pulse.png')),
    );
  }
}

class HomeViewOld extends StatelessWidget {
  const HomeViewOld({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(), backgroundColor: Colors.red),
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
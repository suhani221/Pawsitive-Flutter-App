import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import '../CustomShapes/ShapeSelectCityOne.dart';
import '../GlobalCustomWidgets/card.dart';
import '../GlobalCustomWidgets/toggle_button.dart';

import '/styles/colors.dart';
import '/styles/styles.dart';
import "package:latlong2/latlong.dart" as latLng;

import 'appointment.dart';

class SliverDoctorDetail extends StatelessWidget {
  const SliverDoctorDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DetailBody(),
          )
        ],
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DetailDoctorCard(),
          SizedBox(
            height: 215,
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: const [
                NumberCard(
                  label: 'Patients',
                  value: '100+',
                ),
                SizedBox(width: 15),
                NumberCard(
                  label: 'Experiences',
                  value: '10 years',
                ),
                SizedBox(width: 15),
                NumberCard(
                  label: 'Rating',
                  value: '4.0',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'About Doctor',
              style: kTitleStyle,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Dr. Joshua Simorangkir is a specialist in internal medicine who specialzed blah blah.',
              style: TextStyle(
                color: Color(MyColors.purple01),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Location',
              style: kTitleStyle,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: DoctorLocation(),
          ),
          SizedBox(
            height: 25,
          ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        child: ToggleButton(
          width: 300.0,
          height: 60.0,
          toggleBackgroundColor: Colors.white,
          toggleBorderColor: (Colors.grey[350])!,
          toggleColor: (Colors.blue)!,
          activeTextColor: Colors.white,
          inactiveTextColor: Colors.grey,
          leftDescription: 'FEEDBACK',
          rightDescription: 'BOOK',
          onLeftToggleActive: () {
            print('left toggle activated');
          },
          onRightToggleActive: () {
            print('right toggle activated');
          },
        ),
      ),
        ],
      ),
    );
  }
}

  enum FilterStatus { Feedback, Book }
FilterStatus status = FilterStatus.Feedback;
Alignment _alignment = Alignment.centerLeft;


class DoctorLocation extends StatelessWidget {
  const DoctorLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FlutterMap(
          options: MapOptions(
            center: latLng.LatLng(51.5, -0.09),
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
          ],
        ),
      ),
    );
  }
}



class AboutDoctor extends StatelessWidget {
  final String title;
  final String desc;
  const AboutDoctor({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NumberCard extends StatelessWidget {
  final String label;
  final String value;

  const NumberCard({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(MyColors.bg03),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                color: Color(MyColors.grey02),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              value,
              style: TextStyle(
                color: Color(MyColors.header01),
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailDoctorCard extends StatelessWidget {
  const DetailDoctorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none, children: [
          Positioned(
              child: Container(
                  child: ShapeSelectCityOne())),
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
            top: 100,
            child: Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.06),
              child: Container(
                width: MediaQuery.of(context).size.width*0.88,
                child: card(),
                ),
              ),
            ),
        ],
        ),


      ],
    );
  }
}

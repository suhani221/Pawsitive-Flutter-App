import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import '../CustomShapes/ShapeSelectCityOne.dart';
import '../GlobalCustomWidgets/card.dart';
import '../GlobalCustomWidgets/toggle_button.dart';

import '/styles/colors.dart';
import '/styles/styles.dart';
import "package:latlong2/latlong.dart" as latLng;

import 'appointment.dart';
import 'doctor_detail.dart';

class time_booking extends StatelessWidget {
  const time_booking({Key? key}) : super(key: key);

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
          card2(),

        ],
      ),
    );
  }
}




import 'package:flutter/material.dart';
import '../CustomShapes/ShapeScreenNameOne.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Material(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 500,),
            Stack(children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: const ShapeScreenNameOne(),
              ),
              const Positioned(
                  top: 70,
                  left: 90,
                  child: Text(
                    'Temp Name',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)
                  ))
            ],
            ),
          ],
        ),
      ),
    );
  }
}


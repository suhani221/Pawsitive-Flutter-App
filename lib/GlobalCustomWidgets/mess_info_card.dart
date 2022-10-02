import 'package:flutter/material.dart';

class infoMessCard extends StatefulWidget {
  const infoMessCard({Key? key}) : super(key: key);

  @override
  State<infoMessCard> createState() => _infoMessCardState();
}

class _infoMessCardState extends State<infoMessCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'MESS CARD',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Name: Tushar Goyal',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Room Number: 318',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text("FORBES"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

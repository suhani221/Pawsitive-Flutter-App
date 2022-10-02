// main.dart
import 'package:flutter/material.dart';
import '../CustomShapes/ShapeSelectCityOne.dart';
import '../GlobalCustomWidgets/toggle_button.dart';

class timeline extends StatefulWidget {
  const timeline({Key? key}) : super(key: key);

  @override
  _timelineState createState() => _timelineState();
}

class _timelineState extends State<timeline> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Dr ABC's Clinic","date":"30th September"},
    {"id": 2, "name": "Calcium Deficiency Profile","date":"30th September"},
    {"id": 3, "name": "Liver Function Test","date":"30th September"},
    {"id": 4, "name": "Dr ABC's Clinic","date":"30th September"},
    {"id": 5, "name": "Dr ABC's Clinic","date":"30th September"},
    {"id": 6, "name": "Dr ABC's Clinic","date":"30th September"},
    {"id": 7, "name": "Dr ABC's Clinic","date":"30th September"},




  ];
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    }
    else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundUsers = results;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Material(
        child: Container(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none, children: [
                Positioned(
                    child: Container(
                        child: ShapeSelectCityOne())),
                Positioned(
                  top: 120,
                  child: Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.06),
                    child: Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width*0.88,
                      child: Material(
                        elevation: 8,
                        borderRadius: const BorderRadius.all(Radius.circular(28.0)),
                        child: TextField(
                          onChanged: (value) => _runFilter(value),
                          cursorColor: Colors.grey,
                          style: const TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            fillColor: Colors.white70,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                                borderSide: const BorderSide(width: 2, color: Colors.white)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                                borderSide: const BorderSide(width: 2, color: Colors.white)
                            ),
                            hintText: 'Search for Visit',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato'
                            ),
                            prefixIcon:const Icon(Icons.search,color: Colors.grey,),
                          ),
                        ),
                      ),
                    ),
                  ),)
              ],
              ),
                SizedBox(height: 40,),
                Center(child: Text("Clinic Visits", style: const TextStyle(color:Colors.black,fontSize: 26,fontFamily: "Lato",fontWeight:FontWeight.bold))),
              SizedBox(height: 30,),

              Expanded(
                child:  Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 100),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      elevation: 8,
                      color: Colors.white,
                      child: _foundUsers.isNotEmpty
                          ? ListView.builder(
                        itemCount: _foundUsers.length,
                        itemBuilder: (context, index) => Card(
                          key: ValueKey(_foundUsers[index]["id"]),
                          color: Colors.white,
                          child: ListTile(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),

                            title: Text(
                              _foundUsers[index]["name"].toString(),
                              style: const TextStyle(color:Colors.black,fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.bold),
                            ),
                          subtitle:  Text(_foundUsers[index]["date"].toString(),
                              style: const TextStyle(color:Colors.grey,fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )
                          : const Text(
                        'No results found',
                        style: TextStyle(color:Colors.grey,fontSize: 14,fontFamily: "Lato"),
                      ),
                    ),
                ),
                ),


            ],
          ),

        ),
      ),
    );
  }
}
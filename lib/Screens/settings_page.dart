// main.dart
import 'package:flutter/material.dart';
import '../CustomShapes/ShapeSelectCityOne.dart';
import '../GlobalCustomWidgets/toggle_button.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Push Notifications"},
    {"id": 2, "name": "Access to Contact"},
    {"id": 3, "name": "Allow my Location"},
    {"id": 4, "name": "Calendar Access"},
    {"id": 5, "name": "Data Tracking"},
    {"id": 6, "name": "Voice Assistant"},

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
                            hintText: 'Search for Settings',
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
              SizedBox(height: 80,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 220),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
                            title: Text(
                              _foundUsers[index]["name"].toString(),
                              style: const TextStyle(color:Colors.black,fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.bold),
                            ),
                            trailing: Container(
                              padding: EdgeInsets.symmetric(horizontal: 50.0),
                              child: ToggleButton(
                                width: 80.0,
                                height: 30.0,
                                toggleBackgroundColor: Colors.white,
                                toggleBorderColor: (Colors.grey[350])!,
                                toggleColor: (Colors.blue)!,
                                activeTextColor: Colors.white,
                                inactiveTextColor: Colors.white,
                                leftDescription: 'on',
                                rightDescription: 'off',
                                onLeftToggleActive: () {
                                  print('left toggle activated');
                                },
                                onRightToggleActive: () {
                                  print('right toggle activated');
                                },
                              ),
                            ),
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
// main.dart
import 'package:flutter/material.dart';
import '../CustomShapes/ShapeSelectCityOne.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Chandigarh"},
    {"id": 2, "name": "Mumbai"},
    {"id": 3, "name": "Delhi NCR"},
    {"id": 4, "name": "Pune"},
    {"id": 5, "name": "Bangalore"},
    {"id": 6, "name": "Hyderabad"},
    {"id": 7, "name": "Chennai"},
    {"id": 8, "name": "Gwalior"},
    {"id": 1, "name": "Chandigarh"},
    {"id": 2, "name": "Mumbai"},
    {"id": 3, "name": "Delhi NCR"},
    {"id": 4, "name": "Pune"},
    {"id": 5, "name": "Bangalore"},
    {"id": 6, "name": "Hyderabad"},
    {"id": 7, "name": "Chennai"},
    {"id": 8, "name": "Gwalior"},
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
                          child: const ShapeSelectCityOne())),
                  Positioned(
                      top: 50,
                      left: 5,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.close_rounded, size: 30,),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                          ),
                          const Text('Select your city',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
                          const SizedBox(width: 120,),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward_rounded, size: 30,),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamed(context, '/home_screen');
                            },
                          ),
                        ],
                      ),
                  ),
                  Positioned(
                    top: 120,
                    child: Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.06),
                      child: SizedBox(
                      height: 48,
                      width: MediaQuery.of(context).size.width*0.88,
                      child: Material(
                        elevation: 5,
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
                            hintText: 'Search here',
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
              const SizedBox(height: 40,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _foundUsers.isNotEmpty
                      ? ListView.builder(
                    itemCount: _foundUsers.length,
                    itemBuilder: (context, index) => Card(
                      key: ValueKey(_foundUsers[index]["id"]),
                      color: Colors.white,
                      elevation: 1,
                      child: ListTile(
                          title: Text(
                            _foundUsers[index]["name"].toString(),
                            style: const TextStyle(color:Colors.grey,fontSize: 14,fontFamily: "Lato"),
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
            ],
          ),

        ),
      ),
    );
  }
}
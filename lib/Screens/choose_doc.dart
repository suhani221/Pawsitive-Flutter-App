//code optimisation done
import 'package:flutter/material.dart';
import '../../GlobalCustomWidgets/navigationtop_button.dart';
import '../../GlobalCustomWidgets/custom_textfield.dart';
import '../CustomShapes/ShapeHomeScreenTop.dart';
import '../GlobalCustomWidgets/doc_ard.dart';
import '../GlobalCustomWidgets/navigation_button.dart';
import '../GlobalCustomWidgets/top_app_bar.dart';

class choose_doctor extends StatefulWidget {
  const choose_doctor({Key? key}) : super(key: key);

  @override
  _choose_doctorState createState() => _choose_doctorState();
}

class _choose_doctorState  extends State<choose_doctor> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Dr Suhani Agarwal"},
    {"id": 2, "name": "Dr Tushar Goya"},
    {"id": 3, "name": "Delhi NCR"},
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
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Stack(
            clipBehavior: Clip.none, children: [
            Positioned(
                child: ShapeHomeScreenTop()),
            Positioned(
                top: 50,
                child: topAppBar()),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 167, 10, 0),
            child: Container(
              child:  _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                    key: ValueKey(_foundUsers[index]["id"]),
                    elevation: 18,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 0, left: 10, right: 10),
                          child: Column(
                            children: [
                              Row(
                                  children: <Widget>[
                                    Utils.circularImageWithBorder(
                                        "lib/assets/doc.png", 52, 1, Colors.transparent),
                                    SizedBox(width: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _foundUsers[index]["name"].toString(),
                                          style: const TextStyle(color:Colors.grey,fontSize: 14,fontFamily: "Lato"),),
                                        SizedBox(height: 20,),
                                        Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(12)),
                                              border: Border.all(color: Colors.grey),
                                            ),
                                            child:Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,

                                              children: [
                                                Text("MBBS,DOMS,MS-Opthalmology", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.grey),),
                                                Text("Opthamalogist", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.grey),),
                                                Text("26 Years of Experience", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.grey),)
                                              ],
                                            )
                                        )],),]),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Text("CLOSED TODAY", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal,color: Colors.red),),
                                  SizedBox(width: 30,),
                                  Text("9:30AM-08:00PM", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),),
                                  SizedBox(width: 30,),

                                  Container(
                                    height: 55,
                                    child: ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      elevation: 0,
                                      // Background color
                                    ),
                                        child:Image.asset("lib/assets/message.png")),
                                  )
                                ],
                              ),
                            ],),)],)
                ),

              )
                  : const Text(
                'No results found',
                style: TextStyle(color:Colors.grey,fontSize: 14,fontFamily: "Lato"),
              ),
            ),
          ),





          SizedBox(
            height: height * 0.08,
          ),
          //continue with and microsoft login

        ],
      ),
    );
  }
}
class Utils {
  static Widget circularImageWithBorder(String imgPath, double rad, double borderWidth, Color borderColor) {
    return CircleAvatar(
        radius: rad + borderWidth,
        backgroundColor: borderColor,
        child: CircleAvatar(
          backgroundImage: AssetImage(imgPath),
          radius: rad,
        ));
  }
}


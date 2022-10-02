import 'package:flutter/material.dart';



class navigationtopbutton extends StatefulWidget {
  navigationtopbutton(
      {required this.stateVariable, required this.stateName});
  bool stateVariable;
  String stateName;


  @override
  State<navigationtopbutton> createState() => _navigationtopbuttonState();
}

class _navigationtopbuttonState extends State<navigationtopbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => {
          setState(() {
            widget.stateVariable = !widget.stateVariable;
          })
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: widget.stateVariable ? Colors.blue : Colors.purple, backgroundColor: widget.stateVariable ? Colors.white : Colors.purple,
          fixedSize: const Size(138, 45),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: const BorderSide(color: Color(0xFFE8E6EA))
          ),// Text Color (Foreground color)
        ),
        child: Text(
          widget.stateName,          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
        ),

      ),
    );
  }
}
import 'package:flutter/material.dart';

class drop_down extends StatefulWidget {
  const drop_down({Key? key}) : super(key: key);
  @override
  State<drop_down> createState() => _drop_downState();
}
class _drop_downState extends State<drop_down> {
  final List<String> _animals = ["Breakfast", "Lunch", "Snacks", "Dinner", "All Meals"];
  String? _selectedAnimal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: Colors.black, borderRadius: BorderRadius.circular(25),),
      child: DropdownButton<String>(
        value: _selectedAnimal,
        onChanged: (value) {
          setState(() {
            _selectedAnimal = value;
          });
        },
        hint: const Center(
            child: Text(
          'Select Meal',
          style: TextStyle(color: Colors.white),
        )),
        underline: Container(
          color: Colors.greenAccent,
          width: 2.0,
        ),
        dropdownColor: Colors.white,
        icon: const Icon(
          Icons.arrow_drop_down_circle_rounded,
          color: Colors.white,
        ),
        isExpanded: true,
        // The list of options
        items: _animals
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ))
            .toList(),
        // Customize the selected item
        selectedItemBuilder: (BuildContext context) => _animals
            .map((e) => Center(
                  child: Text(e,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

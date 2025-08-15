import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  const DropdownList({super.key});

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  String selected = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown List"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,

            margin: EdgeInsets.all(10),
            child: DropdownButton<String>(
              isExpanded: true,
              dropdownColor: Colors.grey,
              value: selected,
              items:<String> [
                'Orange',
                'Mango',
                'Apple',
                'Banana',
                'Guava'
              ].map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem(
                  child: Text(value),
                value: value,);
              }).toList(),
              onChanged: (String? Newvalue) {
                      return setState(() {
                        selected = Newvalue!;
                      });
            },),
          )
        ].toList(),
      ),
    );
  }
}

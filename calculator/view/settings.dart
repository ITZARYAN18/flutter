import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          child: Text("Kyu Jii",style: TextStyle(
            color: Colors.red,
            fontSize: 40,
          ),),
        ),
      ),
    );
  }
}

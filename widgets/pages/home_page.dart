import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("tyu",style: TextStyle(
            fontSize: 25,

          ),),
        ),
      ),
      body: Center(child: Container(
        height: 100,
        width: 100,
        child: Center(child: Text("hui")),
        decoration: BoxDecoration(
          color: Colors.blue,
          boxShadow: [BoxShadow(
            blurRadius: 25,
            spreadRadius: 25
          )],
        ),

      )),
    );
  }
}

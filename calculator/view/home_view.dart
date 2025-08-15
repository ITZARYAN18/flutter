import 'package:flutter/material.dart';
import 'package:untitled/view/calculator_view.dart';

class HomeView extends StatelessWidget {
  const HomeView ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          child: Text("ok Jii",style: TextStyle(
            color: Colors.red,
            fontSize: 40,
          ),),
        ),
      ),
    );
  }
}

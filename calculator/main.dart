import 'package:flutter/material.dart';
import 'package:untitled/app/app.dart';
import 'package:untitled/view/calculator_view.dart';
import 'package:untitled/view/home_view.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: RunApp(
      ),
      routes: {
        '/appage': (context) => RunApp(),
        '/homepage' : (context) => HomeView(),
        '/calculator' : (context) => CalculatorView(),
    });



  }
}



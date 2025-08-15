import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          child: Text("Bilkul Jii",style: TextStyle(
            color: Colors.red,
            fontSize: 40,
          ),),
        ),
      ),
    );
  }
}

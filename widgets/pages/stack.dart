import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
        body: Stack(
          children: [
            Positioned(


                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(image: AssetImage('assets/download.jpg'),fit: BoxFit.cover),
              ),

            )),
            Positioned(
                top: 100,
                left: 100,
                child: Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ))
          ],
        ),


    );
  }
}

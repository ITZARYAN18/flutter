import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.all(30)),
                backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                elevation: WidgetStatePropertyAll(20),
                overlayColor: WidgetStatePropertyAll(Colors.black),
              ),
                onPressed: (){
                  print('hi');
                },
                child:  Text("Press me",style: TextStyle(
                  color: Colors.black,
                    fontSize: 40,

                  // shadows: [BoxShadow(
                  //   blurRadius: 25,
                  //   blurStyle: BlurStyle.outer
                  // )],

                ),)),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                      ),
                        onPressed: (){},
                        child: Text("Press Me",style: TextStyle(
                        color: Colors.black,
                          fontSize: 20,))),
                  )
          ],
        ),
      ),
    );
  }
}

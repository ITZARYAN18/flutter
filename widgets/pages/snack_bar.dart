import 'package:flutter/material.dart';

class SnackBars extends StatelessWidget {
  const SnackBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
      ),
      
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: (){
                  final snackBar = SnackBar(
                    action: SnackBarAction(label: 'Undo',
                        onPressed: (){}),
                    backgroundColor: Colors.grey,
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    content: Text("This is a snackbar"),

                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("Press Me"),
          ),
        ),
      ),
    );
  }
}

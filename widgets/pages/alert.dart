import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  Future<void> _showDialog(BuildContext context) async{
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.black,
    elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: Colors.blue,
        title: Text('This is a Alert Demo',style: TextStyle(color: Colors.white),),
        content:SingleChildScrollView(
          child: ListBody(
            children: [
              Text("This is a human Verification",style: TextStyle(color: Colors.white)),
              Text("Are you human?",style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){

          }, child: Text("Yes")),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("NO")),
        ],
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Widget"),
      ),
        body: Center(
          child: ElevatedButton(onPressed: (){
            _showDialog(context);
          },
              child: Text("Press Me")
          ),
          
        ),
    );
  }
}

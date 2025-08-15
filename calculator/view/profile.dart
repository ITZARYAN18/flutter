import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          child: Text("Nhi Jii",style: TextStyle(
            color: Colors.red,
            fontSize: 40,
          ),),
        ),
      ),
    );
  }
}

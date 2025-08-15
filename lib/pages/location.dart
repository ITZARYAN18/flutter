import 'package:flutter/material.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GeoLocation Widget"),
      ),
      body: Column(
        children: [
          Text('Location',style: TextStyle(
            fontSize: 20
          ),),
          ElevatedButton(onPressed: () {
            
          }, child: Text("Find Geolocation"))
        ],
      ),
    );
  }
}

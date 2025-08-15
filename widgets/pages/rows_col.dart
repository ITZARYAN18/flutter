import 'package:flutter/material.dart';

class RowsCol extends StatelessWidget {
  const RowsCol({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Cols"),
      ),
      body: Container(
        width: w,
        height: h,
        color: Colors.yellow,
        child: Column(
          // alignment: WrapAlignment.center,
          // direction: Axis.vertical,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           // Padding(padding: Padding),

            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.white,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Bar",
            style: TextStyle(
              color: Colors.white
            ),
        ),
      ),
      body: Center(

        child: ElevatedButton(onPressed: (){
          showModalBottomSheet(context: context,
              backgroundColor: Theme.of(context).primaryColor,
              enableDrag: true,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("BMW"),
                        subtitle: Text("Car"),
                      ),
                      ListTile(
                        title: Text("kia"),
                        subtitle: Text("Car"),
                      ),
                      ListTile(
                        title: Text('Ferrari'),
                        subtitle: Text("Car"),
                      ),
                      ListTile(
                        title: Text("porsche"),
                        subtitle: Text("Car"),
                      ),
                      ListTile(
                        title: Text("Audi"),
                        subtitle: Text("Car"),
                      ),
                    ],
                  );
              },);
        },
            child: Text("Press Me")),
      ),
    );
  }
}

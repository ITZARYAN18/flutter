import 'package:flutter/material.dart';

class DismissibleBar extends StatefulWidget {
  const DismissibleBar({super.key});

  @override
  State<DismissibleBar> createState() => _DismissibleBarState();
}

class _DismissibleBarState extends State<DismissibleBar> {
  List<String> cars = ['BMW','Ferrari','Audi','Porsche'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        final car = cars[index];
        return Dismissible(
          onDismissed: (direction){
            if(direction==DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(cars[index]),
              backgroundColor: Colors.red,));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(cars[index]),
                backgroundColor: Colors.blue,));
            }
          },
            key: Key(car),
          background: Container(color: Colors.red,),
          secondaryBackground: Container(color: Colors.blue,),
            child:Card(

                  child:
                ListTile(
                  title: Text(cars[index]),

                ),
            ),


        );
      },
            itemCount:cars.length ,),

    );
  }
}

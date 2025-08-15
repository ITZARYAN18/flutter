import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {

  List<String> cars = ['BMW','Audi','Mercedes','Ferrari','Porsche'];
  Map cars_owner = {
    'cars': ['BMW', 'Audi', 'Mercedes', 'Ferrari', 'Porsche'],
    'owners': ['Karan','Ali','salman','hakla shahrukh','akshay'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List and Grid"),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      // body: ListView.builder(
      //   itemBuilder: (context,index){
      //     return Card(
      //       child: ListTile(
      //         leading: Icon(Icons.person),
      //         title: Text(cars_owner['cars'][index]),
      //         subtitle: Text(cars_owner['owners'][index]),
      //       ),
      //     );
      //   },
      //   itemCount: cars.length,
      // ),
      
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
            mainAxisSpacing: 20,
              crossAxisSpacing: 20),
            children: [
              // Card(
              //   child: Text("Halka Shahrukh"),
              // ),
              // Card(
              //   child: Text("Halka Shahrukh"),
              // ),
              // Card(
              //   child: Text("Halka Shahrukh"),
              // ),
              // Card(
              //   child: Text("Halka Shahrukh"),
              // ),
              // Card(
              //   child: Text("Halka Shahrukh"),
              // ),
              // Card(
              //   child: Text("Halka Shahrukh"),
              // ),
              // Card(
              //   child: Text("Halka Shahrukh"),
              // ),
              Card(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                    itemCount: cars.length,
                    itemBuilder: (context,index){

                     return Card(
                        child: Center(child: Text(cars_owner['cars'][index]),),
                      );
                    }),
              ),

            ],
      ),
      
    );
  }
}

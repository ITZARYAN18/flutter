import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {

  List<String> cars = ['BMW','Ferrari','Audi','Porsche'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(color: Colors.pink,
       //  child:  ListView.builder(itemBuilder: (context,index){
       //    DrawerHeader(
       //      child: Container(child: Icon(Icons.menu),),
       //    );
       //            return Card(
       //            child: ListTile(
       //          title: Text(cars[index]),
       //       ),
       // );
       //  },
       //  itemCount: cars.length,),
       
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                DrawerHeader(child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(children: [
                    CircleAvatar(radius: 40,
                    backgroundImage: NetworkImage("https://cimg3.ibsrv.net/ibimg/hgm/1920x1080-1/100/964/bugatti-tourbillon-with-quipe-pur-sang-package_100964115.jpg"),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Bugatti",style: TextStyle(fontSize: 20),),
                        Text(" A hypercar ",style: TextStyle(fontSize: 15))
                      ],
                    )
                  ],),
                )),
                ListTile(
                  leading: Icon(Icons.folder),title: Text('BMW'),
                ),
                ListTile(
                  leading: Icon(Icons.folder),title: Text('Audi'),
                ),
                ListTile(
                  leading: Icon(Icons.folder),title: Text('Ferrari'),
                ), ListTile(
                  leading: Icon(Icons.folder),title: Text('Porsche'),
                ),
                ListTile(
                  leading: Icon(Icons.folder),title: Text('Pagani'),
                ),
                ListTile(
                  leading: Icon(Icons.folder),title: Text('Lamborghini'),
                ), ListTile(
                  leading: Icon(Icons.folder),title: Text('Honda'),
                ),


              ],),
       
       
        ),


      ),
      appBar: AppBar(
        title: Text("Drawer Demo"),
      ),
      // body: ,
    );
  }
}

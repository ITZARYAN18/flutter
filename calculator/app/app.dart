import 'package:flutter/material.dart';
import 'package:untitled/view/calculator_view.dart';
import 'package:untitled/view/home_view.dart';
import 'package:untitled/view/profile.dart';
import 'package:untitled/view/settings.dart';

class RunApp extends StatefulWidget {
   RunApp({super.key});



  @override
  State<RunApp> createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  final List _pages = [
    HomeView(),
    CalculatorView(),
    Profile(),
    Settings(),
  ];
  int _selected = 0;

  void selector(int index){
    setState(() {
      _selected = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(child: Text("HomePage")),


      ),

      body:_pages[_selected],


      drawer: Drawer(
          backgroundColor: Colors.purpleAccent,
          child: Column(
            children: [
              DrawerHeader(child: TextButton(onPressed: (){
                  Navigator.pop(context);
              }, child: Icon(Icons.close,size: 40,)),

              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("HOME"),
                onTap: (){
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/appage');
                },
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("SEARCH"),
                onTap: (){
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("PROFILE"),
                onTap: (){
                  Navigator.pushNamed(context, '/calculator');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("SETTINGS"),
              ),
            ],
          )
      ),





      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: selector,

      items:[
        BottomNavigationBarItem(
            backgroundColor: Colors.black,
         icon: Icon(Icons.home),
          label: 'home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
              label: 'search'
    ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person),
            label: 'profile'
    ),
         BottomNavigationBarItem(
      icon: Icon(Icons.settings),
     label: 'settings'
    ),
      ]

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:taskly_02/pages/alert.dart';
import 'package:taskly_02/pages/animated_text.dart';
import 'package:taskly_02/pages/drawers.dart';
import 'package:taskly_02/pages/snack_bar.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  PageController pageController = PageController();
  List <Widget> widgets = [
    Text('Home'),
    Text('Search'),
   Text( 'Add'),
    Text('Profile'),
  ];

  int selectedIndex = 0;

  void onPressed(int index){
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Navigation Bar"),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          SnackBars(),
          AlertWidget(),
          AnimatedText(),
          Drawers(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

      ],
      onTap: onPressed,
      selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,

      ),
    );
  }
}

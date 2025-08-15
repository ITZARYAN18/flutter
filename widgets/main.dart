import 'package:flutter/material.dart';
import 'package:taskly_02/pages/alert.dart';
import 'package:taskly_02/pages/animated_text.dart';
import 'package:taskly_02/pages/bottom_navigation.dart';
import 'package:taskly_02/pages/bottomsheet.dart';
import 'package:taskly_02/pages/buttons.dart';
import 'package:taskly_02/pages/dissmisible.dart';
import 'package:taskly_02/pages/drawers.dart';
import 'package:taskly_02/pages/dropdown_list.dart';
import 'package:taskly_02/pages/form.dart';
import 'package:taskly_02/pages/image.dart';
import 'package:taskly_02/pages/listview.dart';
import 'package:taskly_02/pages/rows_col.dart';
import 'package:taskly_02/pages/snack_bar.dart';
import 'package:taskly_02/pages/stack.dart';

void main(){
  runApp (const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        primaryColor: Colors.green
      ),
      home:StackWidget(),
      
    );
  }
}

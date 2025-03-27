import 'package:flutter/material.dart';
import 'task_1.dart';
import 'task_2.dart';
import 'task_3.dart';
import 'task_4.dart';
import 'theme_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
    
     // home: const Task_1(),
     //home: const Task_2(),
    //  home: const Task_3(),
    home: const Task_4(),
    );
  }
}
import 'package:flutter/material.dart';
import 'task_1.dart';
import 'task_2.dart';
import 'task_3.dart';
import 'task_4.dart';
import 'task_5.dart';
import 'task_6.dart';
import 'task_7.dart';
import 'task_8.dart';
import 'task_9.dart';
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
    // home: const Task_4(),
    // home: const Task_5(),
    // home: const Task_6(),
    //  home: const Task_7(),
    // home: const Task_8(),
    home: const Task_9(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/todo_home_screen.dart';
import 'package:flutter_todo/utils/logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    logger.d('main start log');
    return MaterialApp(
      title: 'Flutter Todo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const TodoHomeScreen(),
    );
  }
}

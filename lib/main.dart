import 'package:flutter/material.dart';
import 'package:to_do/screens/to_do_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      title: "To Do",
      home: ToDoScreen(),
    );
  }
}

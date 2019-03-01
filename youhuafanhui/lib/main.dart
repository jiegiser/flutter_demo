
import 'package:flutter/material.dart';
import 'right_back_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Deom',
      theme: ThemeData(primaryColor: Colors.blue),
      home: RightBackDemo(),
    );
  }
}
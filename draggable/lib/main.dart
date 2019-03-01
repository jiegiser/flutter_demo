import 'package:flutter/material.dart';
import 'draggable_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: DraggableDemo(),
    );
  }
}
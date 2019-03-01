import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('通讯录')),
      body: Center(
        child: Text('这是通讯录页'),
      ),
    );
  }
}
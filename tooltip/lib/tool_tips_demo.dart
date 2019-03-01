import 'package:flutter/material.dart';

class ToolTipDemo extends StatefulWidget {
  _ToolTipDemoState createState() => _ToolTipDemoState();
}

class _ToolTipDemoState extends State<ToolTipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('tool tips demo')),
      body: Center(
        /*
       Tooltip是继承于StatefulWidget的一个Widget，它并不需要调出方法，当用户长按被Tooltip包裹的Widget时，
       会自动弹出相应的操作提示。 
        */
        child: Tooltip(
          message: '一个提示信息！！',
          child: Icon(Icons.all_inclusive),
        ),
      ),
    );
  }
}
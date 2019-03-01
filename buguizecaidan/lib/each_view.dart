import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  // 变量--title
  String _title;
  // 内容从上一个导航页面传进来
  EachView(this._title);
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}
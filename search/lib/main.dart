import 'package:flutter/material.dart';
import 'search_bar_demo.dart';

void main()=>runApp(MyApp());
/*
MaterialApp 是Material库中提供的Flutter APP框架，通过它可以设置应用的名称、主题、语言、首页及路由列表等。
MaterialApp也是一个widget。
Scaffold 是Material库中提供的页面脚手架，它包含导航栏和Body以及FloatingActionButton（如果需要的话）。 
，路由默认都是通过Scaffold创建。
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: SearchBarDemo(),
    );
  }
}
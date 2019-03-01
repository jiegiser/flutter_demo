import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter bottom NavigationBar',
      // 主题
      theme:ThemeData.light(),
      // 自定义组件
      home: BottomNavigationWidget(),
    );
  }
}

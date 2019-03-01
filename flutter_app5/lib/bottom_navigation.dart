
// import 'package:flutter/material.dart';

// // 动态widget

// class BottomNavigationWidget extends StatefulWidget {
//   final Widget child;

//   BottomNavigationWidget({Key key, this.child}) : super(key: key);

//   _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
// }

// class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
//   final _BottomNavigationColor=Colors.blue;
//   @override
//   Widget build(BuildContext context) {
//     // 脚手架
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         // 一个数组，，里面为widget
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.message,
//               color: _BottomNavigationColor,
//             ),
//             title: Text(
//               '消息',
//               style: TextStyle(color: _BottomNavigationColor),
//             ),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.message,
//               color: _BottomNavigationColor,
//             ),
//             title: Text(
//               '消息',
//               style: TextStyle(color: _BottomNavigationColor),
//             ),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.message,
//               color: _BottomNavigationColor,
//             ),
//             title: Text(
//               '消息',
//               style: TextStyle(color: _BottomNavigationColor),
//             ),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.message,
//               color: _BottomNavigationColor,
//             ),
//             title: Text(
//               '消息',
//               style: TextStyle(color: _BottomNavigationColor),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'pages/account_box.dart';
import 'pages/message_screen.dart';
import 'pages/home_screen.dart';
import 'pages/contact_phone.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}
class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;

  // 初始化方法--重写初始化状态
  // 用于记录是哪一个页面
  int _currentIndex=0;
  // 页面
  List<Widget> list=new List();
  @override
  void initState(){
    // 装载页面--..add建造者模式，list使用..add，返回list类型
    list
    // 注意这里加载的顺序，要跟前面你写的导航要对应
     ..add(MessageScreen())
     ..add(HomeScreen())
     ..add(ContactScreen())
     ..add(MyScreen());
     // 无名无参数，调用父类的方法
     super.initState();
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: list[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         items: [
           BottomNavigationBarItem(
             icon:Icon(
               Icons.message,
               color:_BottomNavigationColor,
             ),
             title:Text(
               '消息',
               style:TextStyle(color:_BottomNavigationColor)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.home,
               color:_BottomNavigationColor,
             ),
             title:Text(
               '首页',
               style:TextStyle(color:_BottomNavigationColor)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.contact_phone,
               color:_BottomNavigationColor,
             ),
             title:Text(
               '通讯录',
               style:TextStyle(color:_BottomNavigationColor)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.account_box,
               color:_BottomNavigationColor,
             ),
             title:Text(
               '我的',
               style:TextStyle(color:_BottomNavigationColor)
             )
           ),
         ],
        
        // 那个组件高亮，就会显示，底部导航的索引
        currentIndex: _currentIndex,
        //  点击相应事件
         onTap: (int index){
          //动态组件-主要是设置状态
           setState(() {
             _currentIndex=index;
           });
         },
         type:BottomNavigationBarType.fixed
       ),
     );
  }
}
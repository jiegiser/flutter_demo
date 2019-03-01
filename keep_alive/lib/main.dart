import 'package:flutter/material.dart';
import 'keep_alive_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}
// with是dart的关键字，意思是混入的意思，就是说可以将一个或者多个类的功能添加到自己的类无需继承这些类， 
// 避免多重继承导致的问题。
// 需要注意的是with后边是Mixin，而不是普通的Widget，这个初学者比较爱犯错误。需要强调一下。


/**
 *with是dart的关键字，意思是混入的意思，
就是说可以将一个或者多个类的功能添加到自己的类无需继承这些类，
避免多重继承导致的问题。
SingleTickerProviderStateMixin 主要是我们初始化TabController时，
需要用到vsync ，垂直属性，然后传递this
 */
class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {
  TabController _controller;
  //保持状态
  @override
  // 重写初始状态
  void initState(){
    super.initState();
    // 长度为3的垂直状态的菜单
    _controller=TabController(length: 3,vsync: this);
  }
  // 重写销毁方法
  //重写被释放的方法，只释放TabController
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        /*
        TabBar是切换组件，它需要设置两个属性。
        controller: 控制器，后边跟的多是TabController组件。
        tabs：具体切换项，是一个数组，里边放的也是Tab Widget。
         */
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          // 注意，，这里的顺序与上面的tabar保持一致，，通过controller:是TabController组件进行控制
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],
      ),
    );
  }
}
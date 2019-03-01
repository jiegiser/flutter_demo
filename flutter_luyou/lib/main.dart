import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
// 处理http请求的包
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      // 注册路由表
      // 使用命名路由
      /*
      命名路由的最大优点是直观，我们可以通过语义化的字符串来管理路由。但其有一个明显的缺点：不能直接传递路由参数。
      如果传递参数，如下面的代码：在注册路由表的时候只能写死，，
      {
          "tip_widgets":(context)=>EchoRoute("内容固定")
      }
       */
      routes: {
        "new_page":(context)=>NewRoute(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// 发送get请求===使用dio插件库
// 
class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;
    void _getHttp() async {
    try {
      Response response = await Dio().get("https://api.github.com/user/keys");
      print(response);
    } catch (e) {
      print(e);
    }
  }
  void _incrementCounter() {
    // 调用发送请求
     _getHttp();
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            // 添加一个按钮
            /*
              MaterialPageRoute({
              WidgetBuilder builder,//
              RouteSettings settings,
              bool maintainState = true,
              bool fullscreenDialog = false,
            })
            builder 是一个WidgetBuilder类型的回调函数，它的作用是构建路由页面的具体内容，返回值是一个widget。
            我们通常要实现此回调，返回新路由的实例。
            settings 包含路由的配置信息，如路由名称、是否初始路由（首页）。
            maintainState：默认情况下，当入栈一个新路由时，原来的路由仍然会被保存在内存中，
            如果想在路由没用的时候释放其所占用的所有资源，可以设置maintainState为false。
            fullscreenDialog表示新的路由页面是否是一个全屏的模态对话框，在iOS中，如果fullscreenDialog为true，
            新页面将会从屏幕底部滑入（而不是水平方向）
             */
            FlatButton(
              child: Text('Open New Route'),
              textColor: Colors.blue,
              onPressed: (){
                // 导航到新路由
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context){
                //     return NewRoute();
                //   }
                // ));


                // 根据路由名导航到新路由
                Navigator.pushNamed(context,'new_page');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}

//定义一个新路由
class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('New Route')),
      body: Center(child: Text('This is new route')),
    );
  }
}

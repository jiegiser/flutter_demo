import 'package:flutter/material.dart';
import 'custome_router.dart';
class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('FirstPage',style: TextStyle(fontSize: 36.0)),
      // 默认4.0，与底部boder进行融合的程度
      elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_next,color: Colors.white,size: 64.0),
          // 点击事件
          onPressed: (){
            // of方法中为上下文，然后push里面参数为路由
            Navigator.of(context).push(CustomeRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(title: Text('SecondPage',style:TextStyle(fontSize: 36.0)),
      // 设置字体居中
      leading: Container(),
      backgroundColor: Colors.pinkAccent,
      // 比如给这里设置为0.0=appbar跟内容会融合到一起，如果两个颜色一样，就相当于一个页面
      elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_before,color: Colors.white,size: 64.0),
          // 点击事件
          onPressed: (){
            // 返回上一页---pop()就是返回
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
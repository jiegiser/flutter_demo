import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  // 初始化状态
  List<Widget> _eachView;
  int _index=0;
  @override
  void initState() {
    // TODO: implement initState-重写初始化状态方法
    super.initState();
    _eachView=List();
    _eachView..add(EachView('Home'))..add(EachView('Jiegiser'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      // 可交互的浮动按钮
      floatingActionButton: FloatingActionButton(
        // 点击事件---浮动按钮点击事件
        onPressed: () {
          // 页面跳转
          Navigator.of(context).push(MaterialPageRoute(
            // 调用build进行生成一个页面
            builder: (BuildContext context){
              return EachView('New Page');
          }));
        },
        // 提示信息
        tooltip: 'Jiegiser',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      // 将上面的组件与下面的组件进行融合
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 底部工具栏
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        // 图形，圆形切口。
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                // 设置状态--改变索引
                setState(() {
                 _index=0; 
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              color: Colors.white,
              onPressed: () {
                setState(() {
                 _index=1; 
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  // 声明一个list数组
  List<Widget> list;
  // 初始化状态，给list添加值，这时候调用了一个自定义方法buildAddButton
  @override
  void initState(){
    super.initState();
    list=List<Widget>()..add(buildAddButton());
  }
  
  @override
  Widget build(BuildContext context) {
    // 得到屏幕的高度和宽度，用来设置container的宽和高
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap 流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height/2,
            color: Colors.grey,
            // 流式布局
            child: Wrap(
              children: list,
              // s设置间距
              spacing: 26.0,
            ),
          ),
        ),
      ),
    );
  }
  Widget buildAddButton(){
    // 返回一个手势widget，只用于显示事件
    return GestureDetector(
      onTap: (){
        if(list.length<9){
          // 设置状态
          setState(() {
           list.insert(list.length-1, buildPhopto()); 
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }


  Widget buildPhopto(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 90.0,
        height: 90.0,
        color: Colors.amber,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }
}
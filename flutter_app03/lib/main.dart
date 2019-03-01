import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 声明一个stack组件-------------stack中层叠布局
    // var stack=new Stack(
    //   // 两个层叠部件的对齐方式-----参数为x，以及y轴。值在0-1是相对于下面的组件来说
    //   alignment: const FractionalOffset(0.5, 0.8),
    //   children: <Widget>[
    //     //图片组件
    //     // 圆形的头像
    //     new CircleAvatar(
    //       // 背景图片
    //       backgroundImage: new NetworkImage('https://avatar.csdn.net/B/9/8/3_cj9551.jpg'),
    //       // 弧度---一个圆
    //       radius: 100.0,
    //     ),

    //     // 容器组件
    //     new Container(
    //       decoration: new BoxDecoration(
    //         color: Colors.lightBlue,
    //       ),
    //       padding: EdgeInsets.all(5.0),
    //       child: Text('Jiegiser 杰'),
    //     )
    //   ],
    // );





    // --------stack之 PositionedWidget层叠定位组件
    // var stack=new Stack(
    //   // 两个层叠部件的对齐方式-----参数为x，以及y轴。值在0-1是相对于下面的组件来说
    //   alignment: const FractionalOffset(0.5, 0.8),
    //   children: <Widget>[
    //     //图片组件
    //     // 圆形的头像
    //     new CircleAvatar(
    //       // 背景图片
    //       backgroundImage: new NetworkImage('https://avatar.csdn.net/B/9/8/3_cj9551.jpg'),
    //       // 弧度---一个圆
    //       radius: 100.0,
    //     ),

    //     // 定位组件---可以根据top、left、bottom、right进行定位布局
    //     new Positioned(
    //       top: 10.0,
    //       left: 10.0,
    //       child: new Text('Jiegiser.win'),
    //     ),
    //     new Positioned(
    //       bottom: 10.0,
    //       right: 10.0,
    //       child: new Text('杰'),
    //     )
    //   ],
    // );





    // card布局
    var card=new Card(
      // 子内容进行垂直布局
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text('甘肃省白银市平川区',style:TextStyle(fontWeight:FontWeight.w500)),
            subtitle: new Text('jiegiser'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
            ),
            // 每一个卡片加一个分割线
            new Divider(),
            ListTile(
            title: new Text('湖北省武汉市洪山区',style:TextStyle(fontWeight:FontWeight.w500)),
            subtitle: new Text('jiegiser'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
            ),
            new Divider(),
            ListTile(
            title: new Text('甘肃省兰州市安宁区',style:TextStyle(fontWeight:FontWeight.w500)),
            subtitle: new Text('jiegiser'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
            )
        ],
      ),
    );
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('水平方向布局'),
        ),

        // 横向元素---布局
        // body: new Row(
        //   children: <Widget>[
        //     // Expanded--使用Expanded组件，会让按钮自适应大小进行布局
        //     // 声明一个按钮
        //     // Expanded(
        //     //     child: new RaisedButton(
        //     //   // 按钮的点击事件
        //     //   onPressed: () {},
        //     //   // 按钮的颜色
        //     //   color: Colors.redAccent,
        //     //   // 按钮里面的内容
        //     //   child: new Text('红色按钮'),
        //     // )),
        //     // Expanded(
        //     //     child: new RaisedButton(
        //     //   // 按钮的点击事件
        //     //   onPressed: () {},
        //     //   // 按钮的颜色
        //     //   color: Colors.orangeAccent,
        //     //   // 按钮里面的内容
        //     //   child: new Text('橙色按钮'),
        //     // )),
        //     // Expanded(
        //     //     child: new RaisedButton(
        //     //   // 按钮的点击事件
        //     //   onPressed: () {},
        //     //   // 按钮的颜色
        //     //   color: Colors.lightBlue,
        //     //   // 按钮里面的内容
        //     //   child: new Text('蓝色按钮'),
        //     // )),

        //     // 不灵活布局

        //     //   new RaisedButton(
        //     //   // 按钮的点击事件
        //     //   onPressed: () {},
        //     //   // 按钮的颜色
        //     //   color: Colors.redAccent,
        //     //   // 按钮里面的内容
        //     //   child: new Text('红色按钮'),
        //     // ),

        //     //   new RaisedButton(
        //     //   // 按钮的点击事件
        //     //   onPressed: () {},
        //     //   // 按钮的颜色
        //     //   color: Colors.orangeAccent,
        //     //   // 按钮里面的内容
        //     //   child: new Text('橙色按钮'),
        //     // ),

        //     //   new RaisedButton(
        //     //   // 按钮的点击事件
        //     //   onPressed: () {},
        //     //   // 按钮的颜色
        //     //   color: Colors.lightBlue,
        //     //   // 按钮里面的内容
        //     //   child: new Text('蓝色按钮'),
        //     // ),

        //     // 灵活与不灵活搭配

        //     new RaisedButton(
        //       // 按钮的点击事件
        //       onPressed: () {},
        //       // 按钮的颜色
        //       color: Colors.redAccent,
        //       // 按钮里面的内容
        //       child: new Text('红色按钮'),
        //     ),
        //     Expanded(
        //         child: new RaisedButton(
        //       // 按钮的点击事件
        //       onPressed: () {},
        //       // 按钮的颜色
        //       color: Colors.orangeAccent,
        //       // 按钮里面的内容
        //       child: new Text('橙色按钮'),
        //     )),
        //     new RaisedButton(
        //       // 按钮的点击事件
        //       onPressed: () {},
        //       // 按钮的颜色
        //       color: Colors.lightBlue,
        //       // 按钮里面的内容
        //       child: new Text('蓝色按钮'),
        //     ),
        //   ],
        // ),

        // 垂直方向布局
        // body: Center(
        //   child: Column(
        //     //对齐属性---居中对齐
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     //主轴---也就是竖轴，，
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     // 如果需要他的内容在容器中横向居中，我们可以将body中的元素放在一个center容器中，也就是相当于
        //     // 放在div中，这样就会居中对象，，注意，center容器中的内容都是相当于父级居中对象，不管是什么
        //     // 组件，它里面的内容都是child里面进行包含;
        //     // -------这里需要注意的是，如果我们需要设置哪一个元素里面是自适应布局，只需要使用Expanded
        //     // 容器进行包裹，同样需要自适应的内容包含在Expanded的child属性中
        //     children: <Widget>[
        //       Text('I am a Jiegiser'),
        //       Expanded(child: Text('My Website is jiegiser.win')),
        //       Text('I love coding'),
        //       // 比如上面的布局，，第一个与第三个text是根据自己的大小进行布局，然后中间的是自适应布局，
        //       // 也就是称的很大，这样，我们一般的应用场景比如是网页的头部以及尾部中间内容，分为三块。
        //       // 中间的内容需要称满。

        //     ],
        //   ),
        // ),





        // stack层叠布局
        // body: Center(
        //   // 使用我们的创建的stack组件
        //   child: stack,
        // ),




        // card布局
        body: Center(
          child: card,
        ),
      ),
    );
  }
}

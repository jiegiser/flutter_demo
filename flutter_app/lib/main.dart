// 引入UI库,dart结尾必须要加分号
// import 'package:flutter/material.dart';

// 入口文件
// 如果在入口函数中需要执行多个函数，需要使用第二种声明方式
// void main() => runApp(MyApp());
// 上面的代码相当于下面的代码
// void main (){
//   runApp(MyApp())
// }

// 我们声明的MyApp类继承自StatelessWidget类
/*
StatefulWidget:具有可变状态的窗口部件，也就是在使用应用的时候就可以随时变化，
比如进度条，随着进度不断变化；

StatelessWidget:不可变状态窗口部件，也就是使用时不可以改变，比如固定的文字，
写在那里就不会改变；
*/
// class MyApp extends StatelessWidget {
//   // 重构方法   重写build方法，传入的参数为内容，这个方法有返回值
//   @override
//   // build方法是要返回一个组件的，Widget类型，前面是类型返回值类型
//   Widget build(BuildContext context) {
//     // 返回一个MaterialApp组件
//     return MaterialApp(
//       title: 'Welcome to flutter',
//       // 窗口的主体
//       home: Scaffold(
//         // 就是APP的头部
//         appBar: AppBar(
//           // title给一个文本类型
//           title: Text('Welcome to Flutter'),
//         ),
//         // 主内容，主内容在中间，所以引用了center组件--主要指上下的中间
//         body: Center(
//           // 1. Text 组件

//           // child: Text(
//           //   'Navigational transitions occur when users move between screens, such as from a home screen to a detail screen.',
//           //   // center 居中对齐,TextAlign.left左端对齐；TextAlign.right右端对齐；TextAlign.start从开始的位置对齐
//           //   // TextAlign.end结尾处对齐
//           //   textAlign: TextAlign.center,
//           //   maxLines: 1, //最大显示几行
//           //   // TextOverflow.clip将超出最大显示的行数的部分进行截取不显示；
//           //   // TextOverflow.ellipsis将溢出的部分用...进行显示
//           //   // TextOverflow.fade 超出部分渐变，
//           //   overflow: TextOverflow.ellipsis,
//           //   // 字体样式
//           //   style: TextStyle(
//           //     fontSize: 25.0, //浮点型数值
//           //     // 设置颜色，一个为透明度，然后是红绿蓝
//           //     color: Color.fromARGB(255, 255, 125, 125),
//           //     // 下划线
//           //     decoration: TextDecoration.underline,
//           //     // 下划线样式
//           //     decorationStyle: TextDecorationStyle.solid,
//           //   ),
//           // ),

//           //2.  Container Widget组件--相当于div
//           // child: Container(
//           //   child: new Text("Hello Jiegiser", style: TextStyle(fontSize: 40.0)),
//           //   // Container下面的子内容的对齐方式---center居中对齐
//           //   // Alignment.bottomCenter下对齐
//           //   // Alignment.bottomLeft下左
//           //   // Alignment.bottomRight下右
//           //   alignment: Alignment.topLeft,
//           //   height: 500.0, //都是浮点型的
//           //   width: 400.0,
//           //   // color: Colors.lightBlue,//Container的颜色--也就是div的背景色

//           //   // 边距--返回的是一个常量
//           //   // const EdgeInsets.all(10.0)--上下左右的边距都是10
//           //   padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0, 0),
//           //   margin: const EdgeInsets.all(10.0),

//           //   // 修饰器
//           //   decoration: new BoxDecoration(
//           //       // 渐变色
//           //       gradient: const LinearGradient(colors: [
//           //     Colors.lightBlue,
//           //     Colors.greenAccent,
//           //     Colors.purple
//           //   ]),
//           //   // 边框
//           //   border: Border.all(width: 2.0,color: Colors.red)
//           //   ),
//           // ),

//           // 图片的加载
//           child: Container(
//             /*
//             Image.asset:加载资源图片，就是加载项目资源目录中的图片,加入图片后会增大打包的包体体积，
//             用的是相对路径。
//             Image.network:网络资源图片，意思就是你需要加入一段http://xxxx.xxx的这样的网络路径地址。
//             Image.file:加载本地图片，就是加载本地文件中的图片，这个是一个绝对路径，跟包体无关。
//             Image.memory: 加载Uint8List资源图片,这个我目前用的不是很多，所以没什么发言权。
//             */
//             child: new Image.network(
//               "http://pic.yupoo.com/jiegiser/624173d3/93786dc7.png",
//               // 图片的填充样式
//               /*
//               BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。
//               BoxFit.contain:全图显示，显示原比例，可能会有空隙。
//               BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。
//               BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。
//               BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。
//               BoxFit.scaleDown：效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。
//               */
//                fit: BoxFit.contain,

//               // 图片混合
//               // 图片混合模式（colorBlendMode）和color属性配合使用，能让图片改变颜色，
//               // 里边的模式非常的多，产生的效果也是非常丰富的。
//               color: Colors.green,
//               colorBlendMode: BlendMode.darken,
//               // 重复
//               /*
//               ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整个画布。
//               ImageRepeat.repeatX: 横向重复，纵向不重复。
//               ImageRepeat.repeatY：纵向重复，横向不重复。
//                */
//               repeat: ImageRepeat.repeatX,
//             ),
//             width: 300.0,
//             height: 400.0,
//             color: Colors.lightBlue,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main()=>runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext content){
//     return MaterialApp(
//       title: "Jiegiser Flutter Demo",
//       home:Scaffold(
//         appBar: new AppBar(
//           title: new Text("ListVIew Widget"),
//         ),
//         body: new ListView(
//           // child为一个list数组，数组类型为Widget组件
//           children: <Widget>[

//             // list瓦片。。也就是像移动办公中的电话本展示，卡片
//             // new ListTile(
//             //   leading: new Icon(Icons.perm_camera_mic),
//             //   title: new Text('perm_camera_mic'),
//             // ),
//             // new ListTile(
//             //   leading: new Icon(Icons.perm_media),
//             //   title: new Text('perm_media'),
//             // ),
//             // new ListTile(
//             //   leading: new Icon(Icons.pause_circle_outline),
//             //   title: new Text('pause_circle_outline'),
//             // )

//             // 使用图片的方式进行展示
//             // 图片列表
//             new Image.network('http://pic.yupoo.com/jiegiser/624173d3/93786dc7.png'),
//             new Image.network('http://pic.yupoo.com/jiegiser/3d80587d/1ecba738.png'),
//             new Image.network('http://pic.yupoo.com/jiegiser/624173d3/93786dc7.png'),
//             new Image.network('http://pic.yupoo.com/jiegiser/3d80587d/1ecba738.png'),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

var it=new List<String>.generate(1000, (i) => "Item $i");
void main() => runApp(
      MyApp(
          // 动态加载list组件
          // 这里可以向组件进行传入参数
          // generate方法生成一个数组，第一个参数为多少个数组，第二个参数为匿名函数
          items: it,
    ),
);
class MyApp extends StatelessWidget {
  // 接收参数
  // 构造函数
  final List<String> items; //声明一个不变的选项

  // @required表示参数是必须的----super是调用父类
  MyApp({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      title: "Jiegiser Flutter Demo",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("ListVIew Widget"),
        ),

        // body: Center(
        //   child: Container(
        //     height: 200.0,
        //     // div中存放list组件

        //     // 直接使用分离出来的list组件
        //     child: MyList(),

        // 原来的写法
        // child: new ListView(
        //   // 组件是横向放置
        //   scrollDirection: Axis.horizontal,
        //   children: <Widget>[
        //     new Container(
        //       width: 180.0,
        //       color: Colors.lightBlue,
        //     ),
        //     new Container(
        //       width: 180.0,
        //       color: Colors.yellow,
        //     ),
        //     new Container(
        //       width: 180.0,
        //       color: Colors.deepOrange,
        //     ),
        //     new Container(
        //       width: 180.0,
        //       color: Colors.deepPurple,
        //     )
        //   ],
        // ),
        //   ),
        // )

        // 动态加载list组件，根据传进来的参数进行构建
        // ListView.builder构建动态列表
        // body: new ListView.builder(
        //   // 多少条数据
        //   itemCount: items.length,
        //   // 第一个参数为上下文，第二个参数为索引
        //   itemBuilder: (content, index) {
        //     return new ListTile(
        //       // title是动态传进来的，读取items内容
        //       title: new Text('${items[index]}'),
        //     );
        //   },
        // ),






        // 动态网格组件
        /*
        padding:表示内边距，这个小伙伴们应该很熟悉。
        crossAxisSpacing:网格间的空当，相当于每个网格之间的间距。
        crossAxisCount:网格的列数，相当于一行放置的网格数量。
         */
        // body: GridView.count(
        //   // 网格距离外部容器的位置
        //   padding: const EdgeInsets.all(20.0),
        //   // 每个网格之间的距离
        //   crossAxisSpacing: 10.0,
        //   // 每一行显示的列数
        //   crossAxisCount: 3,
        //   // 网格里面的内容
        //   children: <Widget>[
        //     const Text("I am Jiegiser"),
        //     const Text("I love xxl"),
        //     const Text("I like book"),
        //     const Text("I am Jiegiser"),
        //     const Text("I am Jiegiser"),
        //     const Text("I am Jiegiser"),
        //   ],
        // ),

        // 上面的另一种写法：
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // 网格的列数
            crossAxisCount: 3,
            // 网格间横轴的距离
            crossAxisSpacing: 2.0,
            // 网格间纵轴的距离
            mainAxisSpacing: 2.0,
            // 宽高比率，2.0就是宽比高大二倍
            childAspectRatio: 0.7
          ),
          children: <Widget>[
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/061546.57396705_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/23/193850.57064957_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/100437.48990338_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/23/110539.45134736_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/061546.57396705_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/061546.57396705_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/061546.57396705_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/23/193850.57064957_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/100437.48990338_280X138X4.jpg',fit:BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mg/2019/02/24/061546.57396705_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/23/193850.57064957_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/100437.48990338_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/23/110539.45134736_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/061546.57396705_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/061546.57396705_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/061546.57396705_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/23/193850.57064957_280X138X4.jpg',fit:BoxFit.cover),
            new Image.network('http://img5.mtime.cn/mg/2019/02/24/100437.48990338_280X138X4.jpg',fit:BoxFit.cover),
          ],
        ),
      ),
    );
  }
}

// 分离的list组件
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // 组件是横向放置
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.yellow,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurple,
        )
      ],
    );
  }
}

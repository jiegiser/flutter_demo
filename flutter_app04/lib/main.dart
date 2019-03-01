// 导航跟其他组件

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: '导航演示01',
//     home: new FirstScreen(),
//   ));
// }

// class FirstScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('导航页面'),
//       ),
//       body: Center(
//         // 内容里面放一个按钮----凸起的按钮
//         child: RaisedButton(
//           child: Text('查看商品详情页'),
//           onPressed: (){
//             // 第一个为上下文参数，第二个为需要处理的方法
//             // 这个就相当于我们a标签要打开哪个页面，
//             // MaterialPageRoute 为一个路由组件
//             Navigator.push(context, MaterialPageRoute(
//               // 构造，执行的方法
//               builder: (context)=>new SecondScreen()
//             ));
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title: Text('jiegiser商品详情页')),
//       body: Center(
//         child: RaisedButton(
//           child: Text('返回'),
//           // 点击事件
//           onPressed: (){
//             // 参数为上下文，，，自动返回上一页
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }

// stlss--生成
// class name extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: child,
//     );
//   }
// }

// 导航的参数传递和接收

// 商品类
// class Product {
//   final String title;//商品标题
//   final String description;//商品描述
//   // 构造函数
//   Product(this.title,this.description){}
// }

// void main(){
//   runApp(MaterialApp(
//     title: '导航的数据传递和接收',
//     // 里面为商品列表
//     home: ProductList(
//       products:List.generate(20, (i)=>Product('商品 $i','这是一个商品详情，编号为 $i'))
//     ),
//   ));
// }

// class ProductList extends StatelessWidget {

// // 接收传进来的参数
// final List<Product> products;
// ProductList({Key key,@required this.products}):super(key:key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('商品列表'),
//       ),
//       // 根据接收到的参数动态构建
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context,index){
//           return ListTile(
//             title: Text(products[index].title),
//             // 点击卡片响应事件
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(
//                 builder: (context)=>ProdectDetail(product:products[index])
//               ));
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class ProdectDetail extends StatelessWidget {
//   final Product product;
//   ProdectDetail({Key key,@required this.product}):super(key:key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('${product.title}')),
//       body: Center(
//         child: Text('${product.description}'),
//       ),
//     );
//   }
// }

// 页面跳转后，并返回数据

// void main() {
//   runApp(MaterialApp(
//     title: '页面跳转返回数据',
//     home: FirstPage(),
//   ));
// }

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('商品页面返回数据')),
//       body: Center(
//         child: RouteButton(),
//       ),
//     );
//   }
// }

// class RouteButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       onPressed: () {
//         _navigetSPXQCS(context);
//       },
//       child: Text('商品详情参数'),
//     );
//   }

//   // 声明方法
//   // async跟node中的异步方法一样
//   _navigetSPXQCS(BuildContext context) async {
//     final result = await Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ShangPing(),
//         ));
//         // 页面底部显示信息
//     Scaffold.of(context).showSnackBar(SnackBar(content: Text('${result}')));
//   }
// }

// //商品详情页面，
// class ShangPing extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('我是商品详情页'),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             RaisedButton(
//               child: Text('商品1'),
//               onPressed: () {
//                 // 第二个参数就是返回的内容
//                 Navigator.pop(context, '商品1');
//               },
//             ),
//             RaisedButton(
//               child: Text('商品2'),
//               onPressed: () {
//                 Navigator.pop(context, '商品2');
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// 配置静态资源文件的加载图片-----在项目的pubspec.yaml文件中进行配置
// 40行-asserts：进行配置图片的地址
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // 加载静态资源文件-图片
      child: Image.asset('images/2017081604561841.png'),
    );
  }
}




// Flutter项目的打包


// 1. 配置App的图标
// 项目根目录/android/app/src/main/res/
// 进入之后你会看到很多mipmap-为前缀命名的文件夹，后边的是像素密度，可以看出图标的分辨率
// mdpi (中) ~160dpi
// hdpi （高） ~240dip
// xhdpi （超高） ~320dip
// xxhdpi （超超高） ~480dip
// xxxhdpi （超超超高） ~640dip
// 将对应像素密度的图片放入相应的文件夹中，图片格式是png格式，这里需要注意的是名称要统一，
// 也就是每个文件夹下的图片的命名是相同的.
// 2. 配置APP的名称、图标和系统权限
// 在目根目录/android/app/src/main/AndroidManifest.xml文件中.
// --------android:label="flutter_app"   //配置APP的名称，支持中文
// --------android:icon="@mipmap/ic_launcher" //APP图标的文件名称
// 3. 生成 keystore

// 输入命令
// storePassword=<password from previous step>    //输入上一步创建KEY时输入的 密钥库 密码
// keyPassword=<password from previous step>    //输入上一步创建KEY时输入的 密钥 密码
// keyAlias=key
// storeFile=<E:/key.jks>    //key.jks的存放路径


// flutter install 将打包后的app安装到虚拟机上
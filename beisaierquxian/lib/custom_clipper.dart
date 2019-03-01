import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // 裁切控件--根据路径
          ClipPath(
            // 要裁切的路径
            clipper: BottomClipperTest(),
            // 容器
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path=Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-50);
    var firstControlPoint=Offset(size.width/2,size.height);
    var firstEndPoint=Offset(size.width,size.height-50);
    // 开始点的x与y，结束点的x与y
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height-50);
    // 第四个点
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class BottomClipperTest extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-20);
    var firstControlPoint=Offset(size.width/4, size.height);
    var firstEndPoint=Offset(size.width/2.25,size.height-30);
    // 画贝塞尔曲线
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint=Offset(size.width/4*3, size.height-80);
    var secondControlEndPoint=Offset(size.width,size.height-40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondControlEndPoint.dx, secondControlEndPoint.dy);
    path.lineTo(size.width,size.height-40);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
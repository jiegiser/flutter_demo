import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}
// 进行混入
class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  // 控制动画的控制器
  AnimationController _controller;
  // 动画
  Animation _animation;
  // 初始化状态
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*
    AnimationController是Animation的一个子类，它可以控制Animation, 也就是说它是来控制动画的，
    比如说控制动画的执行时间。
     */
    _controller=AnimationController(
      vsync: this,//垂直同步设置，使用this就可以了。
      // 动画持续的时间
      // 动画持续时间，这个可以使用seconds秒，也可以使用milliseconds毫秒，工作中经常使用毫秒，因为秒还是太粗糙了
      duration: Duration(milliseconds: 5000),
    );
    // 设置动画，动画使用了动画控制器的约定 
    _animation=Tween(
      begin: 0.0,
      end: 1.0
    ).animate(_controller);

    // 动画监听事件
    /*
    它可以监听到动画的执行状态，我们这里只监听动画是否结束，如果结束则执行页面跳转动作。
     */
    _animation.addStatusListener((status){
      // AnimationStatus.completed:表示动画已经执行完毕。
      // pushAndRemoveUntil:跳转页面，并销毁当前控件。
      if(status==AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context)=>MyHomePage()),
          (route)=> route==null);
      }
    });
    // 播放动画
    _controller.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // 透明动画组件
    return FadeTransition(
      opacity: _animation,//执行动画
      child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546851657199&di=fdd278c2029f7826790191d59279dbbe&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0112cb554438090000019ae93094f1.jpg%401280w_1l_2o_100sh.jpg',
      scale: 2.0,//进行缩放
      fit: BoxFit.cover,//充满父容器
      ),
    );
  }
}
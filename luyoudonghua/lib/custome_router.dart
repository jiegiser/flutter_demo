/*
继承pagerouterbuild-页面路由构造器==用构造方法重写方法
 */
import 'package:flutter/material.dart';

class CustomeRoute extends PageRouteBuilder{
  final Widget widget;
  CustomeRoute(this.widget)
  :super(
    // 过渡时间
    transitionDuration: Duration(seconds: 1),
    // 页面构造器-----有三个参数--第一个为上下文，然后是两个动画效果
    pageBuilder:(
      BuildContext context,
      // 动画
      Animation<double> animation1,
      // 动画
      Animation<double> animation2,
    ){
      return widget;
    },
    // 过渡效果
    transitionsBuilder:(
      BuildContext context,
      // 动画
      Animation<double> animation1,
      // 动画
      Animation<double> animation2,
      // widget
      Widget child
    ){
      // 渐变效果--渐隐渐现效果
      // return FadeTransition(
      //   // 过渡的透明度的效果---begin开始透明度--end结束的时候
      //   opacity: Tween(begin: 0.0,end: 1.0)
      //   // 动画的效果===CurvedAnimation动画曲线-第一个参数为父级的动画，第二个动画曲线的效果
      //   .animate(CurvedAnimation(
      //     parent: animation1,
      //     // 动画曲线-快出慢进--
      //     curve: Curves.fastOutSlowIn
      //   )),
      //   child: child,
      // );

      // 缩放动画效果
      // return ScaleTransition(
      //   // 缩放比例。从没有到有
      //   scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn
      //   )),
      //   child: child,
      // );

      // 旋转+缩放
      // return RotationTransition(
      //   turns: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn
      //   )),
      //   child: ScaleTransition(
      //     scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      //       parent: animation1,
      //       curve: Curves.fastOutSlowIn
      //       )),
            
      //       //这里需要注意-还需要child====9
      //       child: child,
      //   ),
      // );



      // 左右滑动路由动画
      return SlideTransition(
        position: Tween<Offset>(
          // Offset参数为x和y，0.0默认为左上角
          begin: Offset(-1.0, 0.0),
          end: Offset(0.0, 0.0) 
          // 设置动画曲线
          ).animate(CurvedAnimation(
            parent: animation1,
            // fastOutSlowIn快进慢出
            // bounceOut弹动退出
            curve: Curves.bounceOut
          )),
          child: child,
      );
    }
  );
}
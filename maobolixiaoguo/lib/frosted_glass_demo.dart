import 'package:flutter/material.dart';
// 图片过滤器必须使用
import 'dart:ui';

class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 层叠组件
      body: Stack(
        children: <Widget>[
          // 约束性盒子--组件（添加额外的约束条件,约束子组件-就是child上）
          ConstrainedBox(
            // 约束条件，就是随着里面的东西进行扩展
            constraints: const BoxConstraints.expand(),
            // 里面的东西
            child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545738629147&di=22e12a65bbc6c4123ae5596e24dbc5d3&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140309%2F0034034413812339_b.jpg')
          ),
          // 居中的组件
          Center(
            // 可裁切的矩形
            child: ClipRect(
              // 背景过滤器
              child: BackdropFilter(
                // 图片过滤器--模糊的效果
                filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                // 透明度
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    // 盒子装饰器
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                    child: Center(
                      child: Text('Jiegiser',style:Theme.of(context).textTheme.display3),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

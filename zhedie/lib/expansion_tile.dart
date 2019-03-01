import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("折叠面板"),
      ),
      body: Center(
        // 可扩展的小瓦片
        child: ExpansionTile(
          // 标题
          title: Text('Expamsion tile'),
          // 左侧图标
          leading: Icon(Icons.ac_unit),
          // 展开后的背影颜色
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('List tile'),
              subtitle: Text('subtitle'),
            )
          ],
          // 默认是false也就是关闭的
          initiallyExpanded: true,
        ),
      ),
    );
  }
}
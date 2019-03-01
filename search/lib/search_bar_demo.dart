import 'package:flutter/material.dart';

import 'assert.dart';

class SearchBarDemo extends StatefulWidget {
  // _SearchBarDemoState是对应SearchBarDemo的状态类
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Demo'),
        // 也就是最上面appbar右侧的组件，移动办公页面是放大镜搜索，还有高级查询会用到
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context,delegate: searchBarDelegate());
            },
          )
        ],
      ),
    );
  }
}


class searchBarDelegate extends SearchDelegate<String>{
  @override
  // 搜索栏右侧的图标---也就是那个×
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        // 将搜索值变为空
        onPressed: ()=>query="",
      )
    ];
  }
    @override
    // 左侧图标--箭头
    Widget buildLeading(BuildContext context){
      return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,progress: transitionAnimation,
        ),
        // 关闭当前窗口，，关闭上下文
        onPressed: ()=>close(context,null),
      );
    }
    // 搜索结果显示
    @override
    Widget buildResults(BuildContext context){
      return Container(
        width: 100.0,
        height: 100.0,
        // 一个卡片
        child: Card(
          // 亮红色
          color: Colors.redAccent,
          child: Center(
            child: Text(query),
          ),
        ),
      );
    }

    // 提示性文字
    @override
    Widget buildSuggestions(BuildContext context){
      // 三元运算符==判断查询的是否为空,如果为空，展示推荐的数组-如果不为空进行在数组中查找，匹配，
      // 将返回结果处理为list
      final suggestionList=query.isEmpty
      ? recentSuggest 
      :searchList.where((input)=>input.startsWith(query)).toList();
      // 返回动态列表
      return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context,index)=>ListTile(
          title: RichText(
            text: TextSpan(
              // 根据搜索框输入的进行截取长度
              text: suggestionList[index].substring(0,query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              children: [
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(
                    color: Colors.grey
                  )
                )
              ]
          ),
        ),
      ));
    }
  
}
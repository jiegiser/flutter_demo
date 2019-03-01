import 'package:flutter/material.dart';
class ExpansionDemo extends StatefulWidget {
  _ExpansionDemoState createState() => _ExpansionDemoState();
}

class _ExpansionDemoState extends State<ExpansionDemo> {
  
  List<int> mList;//多少个元素，折叠菜单中
  List<ExpandStateBean> expandStateList;
  _ExpansionDemoState(){
    // 初始化list数组
    mList=new List();
    expandStateList=new List();
    // for循环进行赋值
    for(int i=0;i<10;i++){
      mList.add(i);
      // 所有的折叠菜单都为关闭
      expandStateList.add(ExpandStateBean(i,false));
    }
  }
  // 设置现在打开的索引
  _setCurrentIndex(int index,isExpand){
    setState(() {
     expandStateList.forEach((item){
       if(item.index==index){
         item.isOpen=!isExpand;
       }
     }); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('折叠菜单')),
      // 折叠菜单必须放在可滚动的控件下面
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          // 回调方法，点击折叠菜单右侧的图标
          expansionCallback: (index,bol){
            _setCurrentIndex(index,bol);
          },
          children: mList.map((index){
            return ExpansionPanel(
              headerBuilder: (context,isExpanded){
                return ListTile(
                  title: Text('This is No.$index'),
                );
              },
              body: ListTile(
                title: Text('expansion no.$index'),
              ),
              isExpanded: expandStateList[index].isOpen
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ExpandStateBean {
  // 是否为打开
  var isOpen;
  // 哪一个索引--
  var index;
  ExpandStateBean(this.index,this.isOpen);
}
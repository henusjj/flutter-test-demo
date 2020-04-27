import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class  MyApp  extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航栏的跳转',
      // 创建两个界面
      home: new FirstScree()
    );
  }
}

// 第一个界面
class FirstScree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("第一页面"), 
      ),
      body: Center(
        child: RaisedButton(
          child: Text('查看商品详情页'),
          onPressed: (){
              // button的点击事件--
              /*
              Navigator.push：是跳转到下一个页面，它要接受两个参数一个是上下文context，另一个是要跳转的函数。
              Navigator.pop：是返回到上一个页面，使用时传递一个context（上下文）参数，使用时要注意的是，你必须是有上级页面的，也就是说上级页面使用了Navigator.push
              */
              Navigator.push(context,MaterialPageRoute(
                builder: (context){
                  return SecondScreen();
                }
                ) ,
              );
          },
        )
      )
    );
  }
}


// 创建第二个界面

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('第二个界面'), 
      ),
      body: Center(
       child: RaisedButton(
         child: Text('点击返回上一个界面'),
         onPressed: (){
           Navigator.pop(context);
         },
         ), 
      )
    );
  }
}
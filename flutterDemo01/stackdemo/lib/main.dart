import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '层叠布局',

      home: Scaffold(
        appBar: AppBar(
          title: Text('层的布局'),
        ),
        body: Stack(
          // 设置两个层叠的位置,下面是创建两个层叠控件
          // alignment: FractionalOffset(0.5, 0.8),
          children: <Widget>[
            // 用作圆形图像的组件
            CircleAvatar(
              radius: 100.0,
              backgroundImage:NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1587394446588&di=2246905af3b74df9fd9d58ba1a975305&imgtype=0&src=http%3A%2F%2Fimg.wxcha.com%2Ffile%2F201810%2F24%2Ffe3a50557b.jpg%3Fdown') ,
            ),
            // new Container(
            //   child: Text('heusjj123'),
            // ),
            // 绝对定位Positioned---注释上面的alignment
            Positioned(
              child:Text('heusjj123'),
              bottom: 10.0,
              left: 50.0,
             ),
          ],
        ),
      )
    );
  }
}
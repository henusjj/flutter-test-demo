import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'image的使用',
      home : Scaffold(
        appBar: AppBar(
          title:Text('image的使用')
        ),
        body: Center(
          child:Container(
            child:Image.network(
              'https://pics2.baidu.com/feed/267f9e2f070828382ea838902afe2c074d08f17f.jpeg?token=7d21bb6d60264daebe8a9cf1d92bcb6b',
              scale: 1.0,
              // 下面两个组合是改变图片的颜色，图片的混合模式很多
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.darken,
              // 照片重复
              repeat: ImageRepeat.repeat,//可以查看属性
              ),
              width: 300.0,
              height: 300.0,
              // color: Colors.lightBlue,
          ),
        ),
        ),
    );
  }
}

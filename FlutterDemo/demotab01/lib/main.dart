import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text widget",
      theme:new ThemeData(
        // 设置主题颜色
        primaryColor: Colors.red
      ),
      home: TextViews()
    );
  }
}

class TextViews extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("第一页appbar"),
        ),
        body: Center(
          child:Text(
            "wode jiemian这是史晶晶的第一个flutter程序，好好看看，很牛逼的，现在测试行数",
            textAlign: TextAlign.left,
            maxLines: 1,
            // 一行不够使用，这个时候使用溢出设置
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color:Colors.blue,
              fontSize: 17.0,
              // 添加下划线
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double,
              decorationColor: Colors.black,
              backgroundColor:Colors.yellow
               ),
            )
        ),
    );
  }
  
}
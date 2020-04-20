import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "container的使用",
      home: Scaffold(
        appBar:AppBar(
          title:Text(
            "container的使用",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black
            ),
            ),
        ),
        body: Center(
          // child 子空间
          child:Container(
            height: 100.0,
            width: 400.0,
            // color: Colors.red,
            // 在添加一个子空间
            child: Text(
              "子控件",
              style: TextStyle(backgroundColor: Colors.blue),
              ),
              // 实现‘text’的位置布局
              // padding --上下左右
              //1. padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              //2. padding: EdgeInsets.only(
              //   top:20.0,
              //   left: 20.0
              // ),
              padding: EdgeInsets.all(40.0),//所有间距是10
              // 外面距和padding的用法差不多
              margin: EdgeInsets.only(
                left:20.0
              ),
              // 修饰背景框和边框
              decoration:BoxDecoration(
                //边框的颜色
                border:Border.all(
                  width: 2.0,
                  color: Colors.green
                ),
                // 背景颜色渐变--除掉上面的colors
                gradient: const LinearGradient(colors: [Colors.purple,Colors.white])
              ) ,
          )
        ),
      ),
    );
  }     
}

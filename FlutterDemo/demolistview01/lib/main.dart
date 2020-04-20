import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text('横向列表'),
        ),
        body: Center(
          child: Container(
            height:200.0,
            child:ListView(
              scrollDirection:Axis.horizontal ,//横向滚动
              children: <Widget>[
                Image.network('https://pics2.baidu.com/feed/267f9e2f070828382ea838902afe2c074d08f17f.jpeg?token=7d21bb6d60264daebe8a9cf1d92bcb6b'),
                Image.network('https://pics2.baidu.com/feed/267f9e2f070828382ea838902afe2c074d08f17f.jpeg?token=7d21bb6d60264daebe8a9cf1d92bcb6b'),
                Image.network('https://pics2.baidu.com/feed/267f9e2f070828382ea838902afe2c074d08f17f.jpeg?token=7d21bb6d60264daebe8a9cf1d92bcb6b'),
                new Container(
                  width:180.0,
                  color: Colors.lightBlue,
                ),
                new Container(
                  width:180.0,
                  color: Colors.amber,
                ), 
                new Container(
                  width:180.0,
                  color: Colors.deepOrange,
                ),
                new Container(
                  width:180.0,
                  color: Colors.deepPurpleAccent,
                ),
              ],
              )
          ),
        ),
      ),
    );
  }
}
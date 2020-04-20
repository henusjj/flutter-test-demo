import 'package:flutter/material.dart';

void main() =>runApp(MyApp(
  // 生产一个list的变量--生成的带有参数的MyApp类
  items: List<String>.generate(50, (i)=>"Item $i")
  )
);

class MyApp extends StatelessWidget {
  // 这是一个构造函数，除了Key，我们增加了一个必传参数，
  //这里的@required意思就必传。:super如果父类没有无名无参数的默认构造函数，则子类必须手动调用一个父类构造函数。

  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text('动态生成列表'),
        ),
        // 动态列表创建--使用ListView.builder
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return ListTile(
              title:Text('${items[index]}'),
            );
          },

        ),
    ),
    );
  }
}

// 优化代码===
/*
 class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:AppBar(
          title: Text('动态生成列表'),
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
      );
  }
}
*/
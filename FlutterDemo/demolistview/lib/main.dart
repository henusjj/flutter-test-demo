import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'listView的使用',
      home:Scaffold(
        appBar: AppBar(
          title: Text(
            'listView的使用',
              style: TextStyle(color: Colors.red),
          ),
        ),
        body: ListView(
          
          children: <Widget>[
            // 列表数组
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('access_time'),
              trailing: Icon(Icons.keyboard_arrow_right)
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('account_balance'),
              trailing: Icon(Icons.keyboard_arrow_right)

            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('account_box'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Image.network('https://pics2.baidu.com/feed/267f9e2f070828382ea838902afe2c074d08f17f.jpeg?token=7d21bb6d60264daebe8a9cf1d92bcb6b'),
            Image.network('https://pics2.baidu.com/feed/267f9e2f070828382ea838902afe2c074d08f17f.jpeg?token=7d21bb6d60264daebe8a9cf1d92bcb6b')
          ], 
          // 
        ),
        ),
    );
  }
}
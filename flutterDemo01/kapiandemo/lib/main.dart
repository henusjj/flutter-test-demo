import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  var card = new Card(
    child: Column(
     children: <Widget>[
       ListTile(
         title: Text('121212121212'),
         leading: Icon(Icons.access_time),
       ),

       ListTile(
         title: Text('33333333333'),
         leading: Icon(Icons.account_box),
         subtitle: Text('wwwwwwww'),
       ),
        // 添加下划线
        new Divider(),

      ListTile(
        title: Text('edededeeeeee'),
        leading: Icon(Icons.account_circle),
        subtitle: Text('henusjj'),
      ),

     ], 
    )
  );


    return MaterialApp(
      title: '卡片布局',
      home: Scaffold(
        appBar: AppBar(
         title: Text('卡片布局'), 
        ),
        body: card,
      )
    );
  }
}
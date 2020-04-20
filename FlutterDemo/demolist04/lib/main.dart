import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:Text('网格列表')
        ),
        body:GridView.count(
          // padding:表示内边距，这个小伙伴们应该很熟悉。
          //crossAxisSpacing:网格间的空当，相当于每个网格之间的间距。
          //crossAxisCount:网格的列数，相当于一行放置的网格数量。
          crossAxisCount: 3,
          crossAxisSpacing:10.0,
          padding: const EdgeInsets.all(20.0),

          children: <Widget>[
            Text('i am ok'),
            Text('i am fine'),
            Text('i am ok'),
            Text('i am fine'),
            Text('i am ok'),
            Text('i am fine'),

          ],
          )
      ),
    );
  }
}

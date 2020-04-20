import 'package:flutter/material.dart';
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '垂直布局',
      home: Scaffold(
        appBar:AppBar(
          title:Text('垂直布局'),
        ),
        body: Column(
          // 
          // mainAxisAlignment: MainAxisAlignment.center,


          children: <Widget>[
            RaisedButton(
                onPressed: (){},
                color: Colors.red,
                child: Text('垂直布局1'),
            ),
            
            Center(
              child: RaisedButton(
                onPressed: (){},
                color: Colors.orange,
                child: Text('henusjjj'),
                ),
            ),

            RaisedButton(
              onPressed: (){},
              color: Colors.yellow,
              child: Text('垂直布局2'),
            ),
            // 灵活布局添加
             Expanded(child: 
              RaisedButton(
              onPressed: (){},
              color: Colors.blue,
              child: Text('垂直布局3'),
            )
            )
          ],
        )
      ),
    );
  }
}
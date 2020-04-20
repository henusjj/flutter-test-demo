import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'水平布局',

      home:Scaffold(
        appBar: AppBar(
          title:Text('水平布局')
        ),
        body: Row(
          children: <Widget>[
            RaisedButton(
              onPressed:(){},
              
              color: Colors.red,
              child: Text('hello'),
              ),
              RaisedButton(
              onPressed:(){},
              
              color: Colors.yellow,
              child: Text('hello'),
              ),

              RaisedButton(
              onPressed:(){},
              
              color: Colors.blue,
              child: Text('hello'),
              ),

              // 添加灵活布局-会自动平分水平间距
              Expanded(
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.orange,
                  child: Text('121212'),
                )
                )
          ],
        ),
      ),
    );
  }
}
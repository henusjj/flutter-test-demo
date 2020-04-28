import 'package:flutter/material.dart';
import 'bottom_NavBar.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '规则底部导航栏',
      theme: ThemeData(
        // 主题颜色
        primaryColor: Colors.red
      ),
      home: barNavigation(),
    );
  }
}
import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不规则底部导航栏',
      theme: ThemeData(
        //如果要把顶部导航栏和状态栏的颜色修改成黑色或者白色，需要用到这个属性：
       primaryColor: Colors.red ,
       primarySwatch: Colors.lightBlue
      ),
      home: BottomNavBar(),
    );
  }
}
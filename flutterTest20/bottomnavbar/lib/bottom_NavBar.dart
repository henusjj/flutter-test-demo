
import 'dart:io';

import 'package:flutter/material.dart';
import 'Page/email_screen.dart';
import 'Page/home_Screen.dart';
import 'Page/phone_screen.dart';
import 'Page/page_screen.dart';


class barNavigation extends StatefulWidget {
  @override
  _barNavigationState createState() => _barNavigationState();
}

class _barNavigationState extends State<barNavigation> {
  final _bottonBarColor = Colors.blue;
  int _currentIndex =0;
  List<Widget> list = List();
// 获取我们页面数组
@override
void initState() { 
  list
  ..add(HomeScreen())
  ..add(PhoneScreen())
  ..add(EmailScreen())
  ..add(PageScreen());
  super.initState();
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottonBarColor,
              ),
            title: Text(
              'Home',
              style: TextStyle(
                color: _bottonBarColor
              ),
              ),
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
              color: _bottonBarColor,
              ),
            title: Text(
              'Phone',
              style: TextStyle(
                color: _bottonBarColor
              ),
              ),
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottonBarColor,
              ),
            title: Text(
              'Email',
              style: TextStyle(
                color: _bottonBarColor
              ),
              ),
            ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottonBarColor,
              ),
            title: Text(
              'Pages',
              style: TextStyle(
                color: _bottonBarColor
              ),
              ),
            ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
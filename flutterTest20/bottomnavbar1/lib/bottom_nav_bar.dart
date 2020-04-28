import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  List <Widget> _Eachview;
  int index =0;
  @override
  void initState() { 
    super.initState();
    _Eachview = List();
    
    _Eachview
    ..add(EachView('home'))
    ..add(EachView('page'))
    ..add(EachView('mail'))
    ..add(EachView('phone'));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Eachview[index],

      // floatingActionButton工作中我们通常简称它为“FAB”，也许只是我们公司这样称呼，从字面理解可以看出，它是“可交互的浮动按钮”,其实在Flutter默认生成的代码中就有这家伙，只是我们没有正式的接触。
      /*
      onPressed ：点击相应事件，最常用的一个属性。

      tooltip：长按显示的提示文字，因为一般只放一个图标在上面，防止用户不知道，当我们点击长按时就会出现一段文字性解释。非常友好，不妨碍整体布局。

      child ：放置子元素，一般放置Icon Widget。
      */
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context){
              return EachView('new page');
            }));
        },
        tooltip: '长按我才会显示按钮呢',
        child: Icon(
          Icons.add,
         color: Colors.white, 
        )
        ),
        // 将这个悬浮按钮的位子和底部进行融合的属性，
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      /*
      BottomAppBar 是 底部工具栏的意思，
      这个要比BottomNavigationBar widget灵活很多，可以放置文字和图标，当然也可以放置容器。
      color:这个不用多说，底部工具栏的颜色。
      shape：设置底栏的形状，一般使用这个都是为了和floatingActionButton融合，
      所以使用的值都是CircularNotchedRectangle(),有缺口的圆形矩形。
      child ： 里边可以放置大部分Widget，让我们随心所欲的设计底栏。
      */ 
      bottomNavigationBar: BottomAppBar(
       color: Colors.yellow,
       shape: CircularNotchedRectangle(),
       child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
             onPressed: (){
               setState(() {
                 index = 0;
               });
             }
             ),
          IconButton(
            icon: Icon(Icons.mail),
             onPressed: (){
               setState(() {
                 index = 1;
               });
             }
             ),
            //  空白占位
          SizedBox(
            height: 49,
            width: 49,
          ),
          IconButton(
            icon: Icon(Icons.pages),
             onPressed: (){
               setState(() {
                 index=2;
               });
             },
             ),
          IconButton(
            icon: Icon(Icons.pages),
             onPressed: (){
               setState(() {
                 index=3;
               });
             },
             ),   
        ], 
       ),
       
      ),

    );
  }
}


class EachView extends StatefulWidget {
  String _titles; 
  EachView(this._titles);
  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(widget._titles)
        ),
      body: Center(
        child:Text(widget._titles)
        ),
    );
  }
}
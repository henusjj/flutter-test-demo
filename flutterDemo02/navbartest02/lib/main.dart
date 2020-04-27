import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// 创建一个类
class Product{
  String number;
  String productId;
  // 构造函数--
  Product(this.number,this.productId);
}

void main() {
  runApp(
    MaterialApp(
      title: '带参数的返回导航',
      // 第一个界面，动态创建一个列表
      home: FurstScrenn(
        // 参数
        products:List.generate(20, (i){return Product('henusjj商品$i', '编号$i');}
           
           )
      ),
    )
  );
}



class FurstScrenn extends StatelessWidget {
  // 这是一个数组，数组里的元素每个已经赋值
  List<Product> products;

  FurstScrenn({Key key,@required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('第一界面'), 
      ),
      // 动态创建listview--
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text('${products[index].number}+${products[index].productId}'),
            // 点击每一个cell，跳转到详情页
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
               return  ProductList(product:products[index]);
              },),);
            }
          );}
        )
    );
  }
}

// 创建第二页，带参数的类

class ProductList extends StatelessWidget {

  Product product;
   ProductList({Key key,@required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('${product.number}'), 
      ),
      body: Center(
      //  child: Text('${product.productId}'), 
      // 添加一个button
      child:Buttonclick()

      // 将button直接卸载里面里面，不移除，这个时候要特别主要上下文是不是同一个，而且builder不能镶嵌builder
      // 关于builder可以查看文档，以及--https://www.jianshu.com/c/af371130a96d
      )
    );
  }
}




class Buttonclick extends StatelessWidget{
  
@override
Widget build(BuildContext context) {
  return RaisedButton(
        child: Text('点击我'),
        onPressed: (){
          // button定义点击事件-点击事件调用_navigateTopop方法，async启用异步
          _navigateTopop(context);

        }
    );
}

_navigateTopop(BuildContext context) async {
  // 等待
  final result =await Navigator.push(context,
   MaterialPageRoute(
     builder: (context)=>ThirdScreen(),
   )
   );
   
// SnackBar是用户操作后，显示提示信息的一个控件，类似Tost，会自动隐藏。SnackBar是以Scaffold的showSnackBar方法来进行显示的。
  Scaffold.of(context).showSnackBar(
     SnackBar(content: Text('$result'))
    );
  
  }

}



// 创建第三个界面
class ThirdScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title:Text('第三个界面')),
      body: Center(
       child:  RaisedButton(
         child: Text('点击我返回带参数'),
         onPressed: (){
        //  
        Navigator.pop(context,'这是我返回的参数');//
       }), 
      )
    );
  }
}
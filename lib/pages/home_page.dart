import 'package:flutter/material.dart';
import 'home_banner.dart';
import '../services/product.dart';
class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          BannerWidget(),
          RaisedButton(
            child: Text('获取产品列表'),
            onPressed: (){
              getProductResult();
            },
          )
        ],
      ),
    );
  }
}
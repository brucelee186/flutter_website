import 'package:flutter/material.dart';
import '../model/product.dart';
import '../conf/config.dart';
import '../utils/utils.dart';

class ProductDetail extends StatelessWidget{
  final ProductItemModal item;
  //ProductDetail(this.item);
  ProductDetail({Key key, @required this.item}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            Config.IMAGE + item.img,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(item.description),
          )
        ],
      ),
    );
  }
}
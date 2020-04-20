import 'package:flutter/material.dart';
import '../model/product.dart';
import '../conf/config.dart';

class HomeProductPage extends StatelessWidget{
  final ProductListModal list;
  HomeProductPage(this.list);

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: deviceWidth,
      color: Colors.white,
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 7.5),
      child: _build(context, deviceWidth),
    );
  }

  Widget _build(BuildContext context, double deviceWidth){

    double itemWidth = deviceWidth * 168.5 / 360;
    double imageWidth = deviceWidth * 110.0 / 360;

    List<Widget> listWidgets = list.data.map((i){
      return Container(
        width: itemWidth,
        margin: EdgeInsets.only(bottom: 5, left: 2),
        padding: EdgeInsets.only(top:10, left: 13, bottom: 7),
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              i.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Text(
              i.description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Container(
              alignment: Alignment(0,0),
              margin: EdgeInsets.only(top: 5),
              //child: Image.asset(
              child: Image.network(
                Config.IMAGE + i.img,
                width: imageWidth,
                height: imageWidth,
              ),
            )
          ],
        ),
      );
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5, bottom: 10),
          child: Text('New Product', style: TextStyle(
            fontSize: 16.0,
            color: Color.fromRGBO(51, 51, 51, 1),
          ),),
        ),
        // flow container list
        Wrap(
          spacing: 2,
          children: listWidgets,
        )
      ],
    );
  }
}
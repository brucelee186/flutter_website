import 'package:flutter/material.dart';
import 'package:flutterwebsite/style/font.dart';
import '../model/product.dart';
import '../services/product.dart';
import '../style/color.dart';
import '../conf/config.dart';
import 'product_detail_page.dart';

class ProductResultListWidget extends StatelessWidget{

  final ProductListModal list;
  final VoidCallback getNextPage;

  ProductResultListWidget(this.list,{this.getNextPage});

  @override
  Widget build(BuildContext context) {

    return list.data.length == 0
        ? Center(
      child: CircularProgressIndicator(),
    ):ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: list.data.length,
        itemBuilder:(BuildContext context, int i){
          ProductItemModal item = list.data[i];
          if((i + 4) == list.data.length){
            getNextPage();
          }
          return GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetail(item:item)),
              );
            },
            child: Container(
              color: ProductColors.bgColor,
              padding: EdgeInsets.only(
                top: 5.0,
                right: 5.0
              ),
              child: Row(
                children: [
                  Image.network(Config.IMAGE + item.img,
                  width: 120.0,
                  height: 120.0,),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: ProductColors.devideLineColor,
                          )
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                item.type,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: ProductColors.typeColor,
                                ),
                              ),
                              item.point == null ? SizedBox():Container(
                                child: Text(
                                  item.point,
                                  style: TextStyle(
                                    color:ProductColors.pointColor,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 3),
                                margin: EdgeInsets.only(left: 4),
                                decoration: BoxDecoration(border:
                                  Border.all(width: 1, color: ProductColors.pointColor)),
                              )
                            ],
                          ),
                          Text(
                            item.name,
                            style: ProductFonts.itmeNameStyle,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );

  }
}
import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget{
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingPage>{
  @override
  void initState(){
    super.initState();
    // stop at loading page 3 second
    Future.delayed(Duration(seconds: 3),(){
      print('Flutter App Start...');
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    // PageView
    return Center(
      child: Center(
        child: Stack(
          children: <Widget>[
            // 加载背影图
            Image.asset(
              'assets/images/loading.jpg'
            ),
            Center(
              child: Text(
                'Flutter企业站',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  decoration: TextDecoration.none
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
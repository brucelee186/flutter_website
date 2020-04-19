import 'package:flutter/material.dart';
import 'package:flutterwebsite/loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

 void main() => runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   title: 'Flutter Enterprise',
   // 自定义主题
   theme: mDefaultTheme,
   routes: <String, WidgetBuilder>{
      // "app": (BuildContext context) => App(),
      "company_info":(BuildContext context) => WebviewScaffold(
        url: "https://www.baidu.com",
        appBar: AppBar(
          title: Text('公司介绍'),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('app');
            },
          ),
        ),
      )
   },
   // 指定加载页面
   home: Center(
     child: LoadingPage(),
   ),
 ));

 final ThemeData mDefaultTheme = ThemeData(
   primaryColor: Colors.redAccent,
 );
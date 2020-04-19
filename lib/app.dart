import 'package:flutter/material.dart';
import 'pages/abrout_us_page.dart';
import 'pages/home_page.dart';
import 'pages/news_page.dart';
import 'pages/porudct_page.dart';

class App extends StatefulWidget{
  @override
  AppState createState() => AppState();
}

class AppState extends State<App>{

  // current page index
  var _currentIndex = 0;
  HomePage homePage;

  ProductPage productPage;

  NewsPage newsPage;

  AboutUsPage aboutUsPage;

  // 根据当前页面索引返货不同页面
  currentPage() {
    switch (_currentIndex) {
      case 0:
        if (homePage == null) {
          homePage = HomePage();
        }
        return homePage;
      case 1:
        if (productPage == null) {
          productPage = ProductPage();
        }
        return productPage;
      case 2:
        if (newsPage == null) {
          newsPage = NewsPage();
        }
        return newsPage;
      case 3:
        if (aboutUsPage == null) {
          aboutUsPage = AboutUsPage();
        }
        return aboutUsPage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        leading: Icon(Icons.home),
        actions: [
          Padding(
              // 右侧内边距
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: (){},
                child: Icon(
                  Icons.search
                ),
              ),
          ),
        ],
      ),
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        // fixed color is now bottom bar
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index){
          setState(() {
            _currentIndex = index;
          });
        }),
        // add bottom navigation
        items: [
          BottomNavigationBarItem(
            title: Text(
                '首页',
            ),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              title: Text(
                '产品',
              ),
              icon: Icon(Icons.apps)
          ),
          BottomNavigationBarItem(
              title: Text(
                '新闻',
              ),
              icon: Icon(Icons.fiber_new)
          ),
          BottomNavigationBarItem(
              title: Text(
                '关于我们',
              ),
              icon: Icon(Icons.insert_comment)
          ),
        ],
      ),
    );
  }
}
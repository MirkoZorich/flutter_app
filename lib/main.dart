import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page_4square.dart';
import 'page_color_list.dart';
import 'page_codelab.dart';
import 'page_async_query.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Приложение',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
// class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная'),
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontSize: 22,
            fontWeight: FontWeight.bold),
      ),
      body: _mainScreen(),
    );
  }

  Widget _mainScreen() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 22, bottom: 16, left: 16, right: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _createNavRow('4 квадрата', FourSquarePage()),
          _createNavRow('Цветной список', ColorListPage()),
          _createNavRow('Codelab', CodelabPage()),
          _createNavRow('Асинхронный запрос', AsyncQueryPage()),
        ],
      ),
    );
  }

  Widget _createNavRow(String title, Widget page){
    return Container(
      height: 48,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.only(left: 21),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        color: Colors.blue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
          ),
          RotatedBox(
            quarterTurns: 2,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 24.0,
                semanticLabel: 'Some text',
              ),
              onPressed: () => _openPage(page),
            ),
          ),
        ],
      ),
    );
  }

  void _openPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}


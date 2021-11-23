import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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

class FourSquarePage extends StatefulWidget {
  const FourSquarePage({Key? key,}) : super(key: key);

  @override
  State<FourSquarePage> createState() => _FourSquarePage();
}

class _FourSquarePage extends State<FourSquarePage> {

  final Random _random = Random();
  Color _randomColor = Color(0xFFFFFFFF);

  void _setRandomColor() {
    setState(() {
      _randomColor = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        );
    });
  }

  void _changeColor() {

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('4 квадрата'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 82, right: 31, left: 31),
        // constraints: BoxConstraints(
        //   minWidth: 312,
        //   minHeight: 310
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorSquare(color: _randomColor),
                ColorSquare(color: _randomColor),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorSquare(color: _randomColor),
                ColorSquare(color: _randomColor),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setRandomColor,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ColorSquare extends StatelessWidget {

  Color? newColor = Color.fromARGB(1,196,196,196);

  ColorSquare({Color? color, Key? key,}) : super(key: key) {
    this.newColor = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 150,
      height: 150,
      color: this.newColor,
    );
  }
}


class ColorListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Цветной список'),
      ),
      body: Container(
          child: Text('Цветной список')
      ),
    );
  }
}

class CodelabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Кодлаб'),
      ),
      body: Container(
          child: Text('Кодлаб')
      ),
    );
  }
}

class AsyncQueryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Асинк'),
      ),
      body: Container(
          child: Text('Асинк')
      ),
    );
  }
}

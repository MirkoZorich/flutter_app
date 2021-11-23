import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 22, bottom: 16, left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            BlueContainer(title: '4 квадрата'),
            BlueContainer(title: 'Цветной список'),
            BlueContainer(title: 'Codelab'),
            BlueContainer(title: 'Асинхронный запрос'),
          ],
        ),
      ),
    );
  }
}

class BlueContainer extends StatelessWidget {
  final String title;

  BlueContainer({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              onPressed: null,
              ),
            ),
        ],
      ),
    );
  }
}

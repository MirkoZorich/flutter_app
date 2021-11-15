import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true;
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
        // brightness: Brightness.light,
        // textTheme: TextTheme(
        //   caption: TextStyle(
        //     color: Colors.black
        //   ),
        // ),
      ),
      home: MyHomePage(),
    );
  }
}

//Не разобрался как сделать отступ слева для заголовка
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
        padding: EdgeInsets.all(16),
        ),
    );
  }
}

class BlueRow extends StatelessWidget {
  const BlueRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


import 'package:flutter/cupertino.dart';
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
        //Не разобрался как сделать Column на всю ширину
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            BlueContainer(),
            BlueContainer(),
            BlueContainer(),
            BlueContainer(),
          ],
        ),
      ),
    );
  }
}


//Здесь хотел сделать виджет для синего прямоугольника и передавать в конструктор название пункта
//Но не получилось настроить инициализатор
// class BlueContainer extends StatelessWidget {
//
//   const BlueContainer({Key? key, String title = ""}) : super(key: key);
//
//   final cTitle = this.title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }


class BlueContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 48,
      width: 343,
    );
  }
}



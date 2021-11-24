import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class FourSquarePage extends StatefulWidget {
  const FourSquarePage({Key? key,}) : super(key: key);

  @override
  State<FourSquarePage> createState() => _FourSquarePage();
}

class _FourSquarePage extends State<FourSquarePage> {

  final Random _random = Random();
  Color _randomColor = Colors.grey;

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

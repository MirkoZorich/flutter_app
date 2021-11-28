import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ColorListPage extends StatelessWidget {
  ColorListPage({Key? key}) : super(key: key);

  int limit = 1000;
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Цветной список'),
      ),
      body: _buildColorList(),
    );
  }

  Color _getRandomColor() {
    return Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
    );
  }

  Widget _buildColorList() {
    return ListView.builder(
      itemCount: this.limit,
      padding: EdgeInsets.only(top: 14, right: 16, left: 16),
      itemBuilder: (BuildContext _context, int i){
        return _buildColorItem();
      },
    );
  }

  Widget _buildColorItem() {

    Color color = _getRandomColor();

    return Container (
      width: double.infinity,
      height: 71,
      margin: EdgeInsets.only(bottom: 10),
      color: color,
    );
  }
}
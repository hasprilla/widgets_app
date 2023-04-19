import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int seletedColor;

  AppTheme({
    this.seletedColor = 0,
  })  : assert(
          seletedColor >= 0,
          'Selected color must be greate then 0',
        ),
        assert(
          seletedColor < colorList.length,
          'Selected color must be less or equal than ${colorList.length - 1}',
        );

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[seletedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}

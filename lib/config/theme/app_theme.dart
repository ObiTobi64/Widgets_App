import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Color.fromARGB(255, 63, 143, 43),
  Colors.green,
  Colors.orange,
  Colors.purple,
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }):assert(
    selectedColor >= 0, 'Selected color must be greater than 0' 
  ),
    assert(
      selectedColor < colorList.length, 
      'Selected color must be less than the length of the color ${colorList.length - 1  }' 
    );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: false,
    )
  );


}
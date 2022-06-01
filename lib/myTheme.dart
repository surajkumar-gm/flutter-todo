import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[700],
    colorScheme: const ColorScheme.dark(primary: Colors.lightGreen),
    fontFamily: 'Poppins',
    cupertinoOverrideTheme: CupertinoThemeData(
      barBackgroundColor: Colors.grey[900],
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    colorScheme: const ColorScheme.light(),
  );
}

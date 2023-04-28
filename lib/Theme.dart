import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData themedata = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green[400]),
    ),
    scaffoldBackgroundColor: Colors.green[100],
    textTheme: TextTheme(
        bodyMedium: TextStyle(color: Colors.green[400], fontSize: 150)),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.green[100],
      titleTextStyle: TextStyle(
          fontSize: 30, color: Colors.green[400], fontWeight: FontWeight.bold),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.green[100]),
    ));

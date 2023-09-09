import 'package:flutter/material.dart';

Map appTheme = {
  "Light": ThemeData(
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    textTheme: const TextTheme(
            bodyLarge: TextStyle(),
            bodyMedium: TextStyle(),
            bodySmall: TextStyle())
        .apply(bodyColor: Colors.black),
  ),

  "Dart": ThemeData(
    backgroundColor: Color(0xff2D2D3A),
    brightness: Brightness.dark,
    textTheme: const TextTheme(
            bodyLarge: TextStyle(),
            bodyMedium: TextStyle(),
            bodySmall: TextStyle())
        .apply(bodyColor: Colors.white),
  )
};

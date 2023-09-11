import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

Map customTheme = {
  "Light": ThemeData(
    brightness: Brightness.light,
    colorScheme:
        const ColorScheme.light(background: whiteColor, primary: blackColor),
  ),
  "Dark": ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
        background: Color(0xff2D2D3A), primary: Colors.white),
  )
};

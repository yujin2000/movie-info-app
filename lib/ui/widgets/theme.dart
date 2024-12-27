import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    // brightness ==> mode 를 정하는 기준
    brightness: Brightness.dark,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: const BorderSide(
          color: Colors.white,
        ),
      ),
    ),
  ),
);

import 'package:flutter/material.dart';
import 'package:theme_with_bloc/theme/theme_bloc.dart';

MyTheme buildLightTheme() {
  return MyTheme(
      'light',
      ThemeData(
        brightness: Brightness.light,
        accentColor: Colors.deepOrange,
        primaryColor: Colors.cyanAccent,
      ));
}

MyTheme buildDarkTheme() {
  return MyTheme(
      'dark',
      ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.lightBlueAccent,
        primaryColor: Colors.pink,
      ));
}

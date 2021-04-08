import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData theme() {
  return ThemeData(
      // 手脚架组件背景颜色
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}

InputDecorationTheme inputDecorationTheme() {
  var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: KTextColor),
      gapPadding: 10);
  return InputDecorationTheme(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ));
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(color: KTextColor),
      bodyText2: TextStyle(color: KTextColor));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black87),
      textTheme: TextTheme(
          headline6: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18)));
}

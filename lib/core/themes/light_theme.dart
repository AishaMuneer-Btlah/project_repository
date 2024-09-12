import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData appLightTheme = ThemeData(
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      color: Colors.grey,
      fontSize: 30,
      fontFamily: 'Fonts',
    )
  ),

  useMaterial3: false,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.all(20),
      ),
      backgroundColor: WidgetStateProperty.all<Color>(
        Colors.purple,
      )
    )
  )
);
import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(

  primaryColor: Colors.white,
  backgroundColor: Colors.black,
  cardColor: Color(0xFF1f1f1f),
  textTheme: TextTheme(
    headlineLarge: TextStyle(fontSize: 20,color: Colors.white),
    headlineMedium: TextStyle(fontSize: 20,color: Colors.white),
    headlineSmall: TextStyle(fontSize: 16,color: Colors.white),
    bodyMedium: TextStyle(fontSize: 16,color: Colors.white),
    labelMedium: TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.white),
  ),

  // Define other properties like button theme, input decoration theme, etc.
);
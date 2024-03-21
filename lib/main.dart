import 'package:assignment/models/theme.dart';
import 'package:assignment/pages/country_selection.dart';
import 'package:assignment/pages/profile_page.dart';
import 'package:assignment/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<DataProvider>(
      create: (context) => DataProvider(), // Provide an instance of your data model
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme,
      color: Colors.black,
      home: ProfilePage(),
    );
  }
}

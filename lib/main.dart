// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vegi/screens/home/home.dart';
import 'package:vegi/config/color.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroungColor,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

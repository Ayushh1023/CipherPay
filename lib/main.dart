// ignore_for_file: prefer_const_constructors

import 'package:crypto_part/pages/home.dart';
import 'package:crypto_part/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
        brightness: Brightness.dark,
      ),
      home: Home(),
    );
  }
}

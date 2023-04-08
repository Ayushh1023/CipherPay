// ignore_for_file: prefer_const_constructors, unused_import

import 'package:crypto_part/pages/GotoCrypto.dart';
import 'package:crypto_part/pages/MyRoutes.dart';
import 'package:crypto_part/pages/first.dart';
import 'package:crypto_part/pages/home.dart';
import 'package:crypto_part/pages/home_page.dart';
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
        brightness: Brightness.light,
      ),
      routes: {
        MyRoutes.gotocryto: (context) => GotoCrypto()
      },
      home: First(),
    );
  }
}

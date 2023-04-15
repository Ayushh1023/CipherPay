// ignore_for_file: prefer_const_constructors, unused_import
import 'package:CipherPay/pages/inr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:CipherPay/pages/GotoCrypto.dart';
import 'package:CipherPay/pages/MyRoutes.dart';
import 'package:CipherPay/pages/first.dart';
import 'package:CipherPay/pages/home.dart';
import 'package:CipherPay/pages/home_page.dart';
import 'package:CipherPay/pages/wrapper.dart';
import 'package:CipherPay/pages/inr.dart';

import 'package:CipherPay/theme/colors.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        MyRoutes.gotocryto: (context) => GotoCrypto(),
        MyRoutes.gotonative: (context) => INR()
      },
      home: INR(),
    );
  }
}

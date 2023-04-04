import 'package:cipher_pay/pages/createuser.dart';
import 'package:cipher_pay/pages/first.dart';
import 'package:cipher_pay/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:cipher_pay/utils/routes.dart';
import 'package:cipher_pay/pages/meta_login_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.firstpage,
      routes: {
        MyRoutes.mloginRoute: (context) => const MLoginPage(),
        MyRoutes.firstpage: (context) => FirstPage(),
        MyRoutes.login: (context) => Login(),
        MyRoutes.create: (context) => CreateUser()
      },
    );
  }
}


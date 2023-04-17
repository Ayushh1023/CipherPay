import 'package:CipherPay/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GotoCrypto extends StatelessWidget{
  const GotoCrypto({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(title: Text("Crypto WatchList"),actions: [

    ],),
    body: HomePage(),
  );
  }

}
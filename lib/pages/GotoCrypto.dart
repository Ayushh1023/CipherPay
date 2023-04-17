import 'package:CipherPay/pages/MyRoutes.dart';
import 'package:CipherPay/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GotoCrypto extends StatelessWidget{
  const GotoCrypto({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
  return Scaffold(
    appBar:AppBar(title: Text("Crypto WatchList"),actions: [
      TextButton(onPressed:(){
        Navigator.pushNamed(context,MyRoutes.shrey);
      },style: style, child: Text("Developer"))
    ],),
    body: HomePage(),
  );
  }

}
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:crypto_part/pages/MyRoutes.dart';
import 'package:crypto_part/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crypto_part/theme/colors.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
        
          colors: [appBgColorPrimary, appBgColorSecondary],
        ),
      ),
      child: getBody(),
    ));
  }

  getBody() {
    return Container( 
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          const Text("Go to your Choice of Transactions"),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.gotocryto);
              },
              child: const Text("Go to Cryto")),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Go ToNative "))
        ],
      ),
    );
  }
}



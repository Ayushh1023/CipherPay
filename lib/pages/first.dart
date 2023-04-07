import 'package:crypto_part/pages/MyRoutes.dart';
import 'package:crypto_part/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          SizedBox(height: 100,),
           const Text("Go to your CHOICE Transactions"),
          SizedBox(height: 100,),
          ElevatedButton(onPressed:() {
            Navigator.pushNamed(context,MyRoutes.gotocryto);
          }, child:const Text("Go to Cryto")),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){

          }, child: const Text("Go ToNative "))
        ],
      ),
    );
  }
}


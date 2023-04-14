import 'package:CipherPay/pages/MyRoutes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [appBgColorPrimary, appBgColorSecondary],
        ),
      ),
      child:Column(
        children: [
          SizedBox(height: 100,),
          Text("Welcome "+FirebaseAuth.instance.currentUser!.displayName!,
            style: TextStyle(color: Colors.orange,
              fontSize: 25),),
          SizedBox(height: 100,),
          ElevatedButton(onPressed:() {
            Navigator.pushNamed(context,MyRoutes.gotocryto);
          }, child:const Text("Go Crypto")),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){

          }, child: const Text("Go Native"))
        ],
      ),
    );
  }
}
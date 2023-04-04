import 'package:cipher_pay/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset("assets/images/choice.png",fit: BoxFit.cover,height: 200,width: 200,),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,MyRoutes.mloginRoute);
          },
            child: const Text("Go to Cryto"),

          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,MyRoutes.razor);
          },
            child: const Text("Go to Native"),

          )
        ],
      ),
    );
  }
}
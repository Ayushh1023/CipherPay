import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Razor extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Razorpay"),
      ),
      body: const Center(
        child:
        Text("Welcome to Razorpay")
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class INR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var balance = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Native Payments"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [appBgColorSecondary,appBgColorPrimary],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Container(
            child: Column(
              children: [
                Text(
                  '$balance INR',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "1000.00", labelText: "Enter Withdraw Amount"),
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 15),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Withdraw")),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "1000.00", labelText: "Enter Deposit Amount"),
                  style: const TextStyle(fontSize: 15),
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Deposit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

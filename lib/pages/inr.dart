import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class INR extends StatefulWidget {
  const INR({Key? key}) : super(key: key);

  @override
  _INRState createState() => _INRState();
}

class _INRState extends State<INR> {
  TextEditingController withdrawController = TextEditingController();
  TextEditingController depositController = TextEditingController();
  double balance = 0;

  void _depositAmount(double amount) {
    setState(() {
      balance+=amount;
      depositController.text = '';
    });
  }
  void _withdrawAmount(double amount) {
    setState(() {
      balance-=amount;
      withdrawController.text = '';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Native Payments"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [appBgColorSecondary, appBgColorPrimary],
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
                  controller: withdrawController,
                  decoration: const InputDecoration(
                      hintText: "1000.00", labelText: "Enter Withdraw Amount"),
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 15),
                ),
                ElevatedButton(onPressed: () {
                  double amount = double.parse(withdrawController.text);
                  _withdrawAmount(amount);
                }, child: Text("Withdraw")),
                TextFormField(
                  controller: depositController,
                  decoration: const InputDecoration(
                      hintText: "1000.00", labelText: "Enter Deposit Amount"),
                  style: const TextStyle(fontSize: 15),
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(onPressed: () {
                  double amount = double.parse(depositController.text);
                  _depositAmount(amount);
                }, child: Text("Deposit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

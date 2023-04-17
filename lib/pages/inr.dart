import 'package:CipherPay/pages/MyRoutes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../theme/colors.dart';

class INR extends StatefulWidget {
  const INR({Key? key}) : super(key: key);

  @override
  _INRState createState() => _INRState();
}

class _INRState extends State<INR> {
  late String _uid;
  late double _balance;
  late TextEditingController _withdrawController;
  late TextEditingController _depositController;

  @override
  void initState() {
    super.initState();

    _withdrawController = TextEditingController();
    _depositController = TextEditingController();

    super.initState();
    _balance = 0;
    _initData();
  }

  Future<void> _initData() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      _uid = user.uid;
      final snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(_uid)
          .get();
      if (snapshot.exists) {
        setState(() {
          _balance = snapshot.data()!['balance'];
        });
      }
    }
  }

  void _depositAmount(double amount) async {
    setState(() {
      _balance += amount;
      _depositController.text = '';
    });
    final userRef =
    FirebaseFirestore.instance.collection('users').doc(_uid);
    await userRef.set({'balance': _balance}, SetOptions(merge: true));
  }

  void _withdrawAmount(double amount) async {
    setState(() {
      _balance -= amount;
      _withdrawController.text = '';
    });
    final userRef =
    FirebaseFirestore.instance.collection('users').doc(_uid);
    await userRef.set({'balance': _balance}, SetOptions(merge: true));
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Native"),
       actions: [
         TextButton(onPressed:(){
           Navigator.pushNamed(context, MyRoutes.vaibhav);
         },style: style, child:const Text("Developer"))
       ],
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
                  '${_balance.toStringAsFixed(2)} INR',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: _withdrawController,
                  decoration: const InputDecoration(
                      hintText: "1000.00", labelText: "Enter Withdraw Amount"),
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 15),
                ),
                ElevatedButton(
                    onPressed: () {
                      double amount = double.parse(_withdrawController.text);
                      _withdrawAmount(amount);
                    },
                    child: Text("Withdraw")),
                TextFormField(
                  controller: _depositController,
                  decoration: const InputDecoration(
                      hintText: "1000.00", labelText: "Enter Deposit Amount"),
                  style: const TextStyle(fontSize: 15),
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(
                    onPressed: () {
                      double amount = double.parse(_depositController.text);
                      _depositAmount(amount);
                    },
                    child: Text("Deposit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

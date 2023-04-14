import 'package:CipherPay/pages/first.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context,AsyncSnapshot snapshot)
        {
          if(snapshot.hasError ){
            return Text(snapshot.error.toString());
          }
          if(snapshot.connectionState==ConnectionState.active)
          {
            if(snapshot.data == null) {
              return Login();
            }
            else
            {
              return First();
            }
          }
          return Center(child: CircularProgressIndicator());
        }
    );
  }
}



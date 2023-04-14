import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
                fit: BoxFit.cover),
            const SizedBox(
              height: 20,
            ),
            const Text("Login Page",style:TextStyle(color: Colors.blue,
                fontWeight:FontWeight.bold,
                fontSize: 40)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  // TextFormField(
                  //
                  //   decoration: const InputDecoration(
                  //       hintText: "Enter Username",
                  //       labelText: "UserName"
                  //   ),
                  //   style: const TextStyle(
                  //       fontSize: 25
                  //   ),
                  // ),
                  // TextFormField(
                  //   obscureText: true,
                  //   style: const TextStyle(
                  //       fontSize: 25
                  //   ),
                  //   decoration: const InputDecoration(
                  //       hintText: "Enter Password",
                  //       labelText: "Password"
                  //   ),
                  // ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                      child: Text("Login with Google"),
                      style:TextButton.styleFrom(minimumSize: Size(150,50)),
                      onPressed: () async {
                        signWithGoogle();
                        print("success");
                      }
                  ),
                  // const SizedBox(
                  //   height: 40.0,
                  // ),
                  // const SizedBox(
                  //   height: 40.0,
                  // ),
                  // ElevatedButton(
                  //     child: Text("Login Anonymusly"),
                  //     style:TextButton.styleFrom(minimumSize: Size(150,50)),
                  //     onPressed: () async {
                  //       AuthService.signWithGoogle();
                  //     }
                  // )


                ],
              ),
            )

          ],


        )
    );
  }
  void signWithGoogle() async {
  GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
 AuthCredential credential = GoogleAuthProvider.credential(
   accessToken: googleAuth?.accessToken ,
   idToken:googleAuth?.idToken
 );
  UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
  print(userCredential.user?.displayName);
}

}
// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart'
    show Buttons, SignInButton;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vegi/screens/home/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );

      final FirebaseAuth _auth = FirebaseAuth.instance;
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;

      return user;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double
            .infinity, // this box will take all the parent height, in our case all the screen
        width: double.infinity, // same for the width
        decoration: BoxDecoration(
            // add a box background
            image: DecorationImage(
                fit: BoxFit
                    .cover, // the image will cover all the box, in our case all the screenn
                image: AssetImage('assets/background.png'))),

        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // this will center our box to the ceter of parent box.
          children: [
            Container(
              height: 400,
              width: double.infinity,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // this space all elements in column equally
                children: [
                  Text("Sign In to continue"),
                  Text(
                    "Vegi",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3))
                        ]),
                  ),
                  Column(
                    children: [
                      SignInButton(Buttons.Apple,
                          text: "Sign in with Apple", onPressed: () {}),
                      SignInButton(Buttons.Google, text: "Sign in with Google",
                          onPressed: () {
                        _googleSignUp().then(
                            (value) => Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: ((context) => HomeScreen()),
                                  ),
                                ));
                      }),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "By signing in you are agreeing to our",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text(
                        "Terms and Privacy policy",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

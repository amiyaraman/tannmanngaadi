import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobbmovieapi/screens/mainscreen.dart';
import 'package:hobbmovieapi/screens/registerpage.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool isSigned = false;
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        setState(() {
          isSigned = true;
        });
      } else {
        isSigned = false;
      }
    });
    Timer(Duration(seconds: 2), () {
      isSigned
          ? Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MainScreen()))
          : Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => RegisterScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        child: Container(
          color: Colors.orange,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Image.asset(
                  'assert/images/logo.jpeg',
                  height: 260,
                  width: 260,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "Welcome To ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Nunito',
                ),
              ),
              Text(
                "The",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Nunito',
                ),
              ),
              Text(
                "TANN MANN GAADI ",
                style: TextStyle(
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito',
                    fontSize: 37),
              )
            ],
          ),
        ),
      ),
    );
  }
}

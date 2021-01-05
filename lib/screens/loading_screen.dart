import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/login_screen.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbuttonColor2,
        body: Center(
                  child: Container(
            color: Colors.white,
            child: Image(
              // width: 100.0,
              // height: 100.0,
              // fit: BoxFit.fill,
              image: new AssetImage('img/logo-standard.png'),
            ),
          ),
        ),
      ),
    );
  }
}

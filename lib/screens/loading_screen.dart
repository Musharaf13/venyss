import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:venyss/Data%20Models/UserType.dart';
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
      () => Navigator.pushNamed(context, '/guestLogin'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(Provider.of<UserType>(context).userType),
        // ),
        backgroundColor: kbuttonColor2,
        body: Center(
          child: Container(
            color: Colors.white,
            child: Image(
              image: new AssetImage('img/logo-standard.png'),
            ),
          ),
        ),
      ),
    );
  }
}

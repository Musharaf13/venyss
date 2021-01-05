import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CommonButton.dart';
import 'package:venyss/screens/guesthome_screen.dart';

import '../constants.dart';

class GuestLogin extends StatefulWidget {
  @override
  _GuestLoginState createState() => _GuestLoginState();
}

class _GuestLoginState extends State<GuestLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbuttonColor2,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image(
                    width: 100.0,
                    height: 100.0,
                    // fit: BoxFit.fill,
                    image: new AssetImage('img/logo-standard.png')),
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  child: Text("Continue as..."),
                ),
                CommonButtom(
                  title: "Guest",
                  color: kbuttonColor2,
                  onpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GuestHome()),
                    );
                  },
                ),
                CommonButtom(
                  title: "Login",
                  color: kbuttonColor1,
                  onpress: () {},
                ),
                Text("Or"),
                CommonButtom(
                  title: "Partner",
                  color: kbuttonColor1,
                  onpress: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

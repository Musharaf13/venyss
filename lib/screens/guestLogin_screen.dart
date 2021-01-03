import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GuestLogin extends StatefulWidget {
  @override
  _GuestLoginState createState() => _GuestLoginState();
}

class _GuestLoginState extends State<GuestLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                Container(
                  width: 220,
                  child: OutlineButton(
                    focusColor: Colors.black,
                    // highlightColor: Colors.black,
                    highlightedBorderColor: Colors.black,
                    disabledBorderColor: Colors.black,
                    onPressed: () {},
                    child: Text("Guest"),
                  ),
                ),
                Container(
                  width: 220,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("login"),
                    color: Colors.black12,
                  ),
                ),
                Text("Or"),
                Container(
                  width: 220,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("Partner"),
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

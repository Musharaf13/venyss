import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:venyss/components/CommonButton.dart';
import 'package:venyss/components/CommonSpace.dart';
import 'package:venyss/constants.dart';

import 'guestLogin_screen.dart';

class Login extends StatelessWidget {
  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  String title = "Login";
  Color color = Colors.black12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbuttonColor2,
      body: Builder(
        builder: (context) => Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              // physics: NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    width: 100.0,
                    height: 100.0,
                    // fit: BoxFit.fill,
                    image: new AssetImage('img/logo-standard.png'),
                  ),
                  SignInButton(
                    Buttons.FacebookNew,
                    onPressed: () {
                      _showButtonPressDialog(context, 'Continue with Facebook');
                    },
                  ),
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {
                      _showButtonPressDialog(context, 'Continue with Gmail');
                    },
                  ),
                  CommonSpace(),
                  Text("Or"),
                  Text("Continue with your email"),
                  CommonSpace(),
                  Container(
                    width: 300,
                    child: TextField(
                      style: TextStyle(
                          // fontSize: 16
                          ),
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        border: OutlineInputBorder(),
                        // labelText: 'Password',
                        hintText: 'Email Address',
                      ),
                    ),
                  ),
                  CommonSpace(),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        isDense: true,
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  CommonSpace(),
                  Text(
                    "Forget Password?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  CommonButtom(
                    title: "Login",
                    color: kbuttonColor1,
                    onpress: () {},
                  ),
                  CommonButtom(
                      title: "Skip",
                      color: kbuttonColor2,
                      onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GuestLogin()),
                        );
                      }),

                  Row(children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) {
                          value = false;
                        }),
                    Text("recieve exclusive offers and updates")
                  ]),
                  Text(
                    "By creating your account or signing in, you agree to our terms and conditions & privacy policy",
                    style: TextStyle(fontSize: 13),
                  ),
                  // Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

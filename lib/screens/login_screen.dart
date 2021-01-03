import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'guestLogin_screen.dart';

class Login extends StatelessWidget {
  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Text("Or"),
                Text("Continue with your email"),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // labelText: 'Password',
                    hintText: 'Email Address',
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // labelText: 'Password',
                    hintText: 'Password',
                  ),
                ),
                Text(
                  "Forget Password?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
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

                Container(
                  width: 220,
                  child: OutlineButton(
                    focusColor: Colors.black,
                    // highlightColor: Colors.black,
                    highlightedBorderColor: Colors.black,
                    disabledBorderColor: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GuestLogin()),
                      );
                    },
                    child: Text("Skip"),
                  ),
                ),
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
    );
  }
}

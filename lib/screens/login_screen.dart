import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';

// import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:venyss/Data%20Models/UserType.dart';
import 'package:venyss/components/CommonButton.dart';
import 'package:venyss/components/CommonSpace.dart';
import 'package:venyss/constants.dart';
// import 'package:provider/provider.dart';

// import 'skip_screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool receiveOffersCheck = false;

  String title = "Login";

  Color color = Colors.black12;

  @override
  Widget build(BuildContext context) {
    print(Provider.of<UserType>(context, listen: false).userType);
    // print(Provider.of<UserType>(context, listen: false).userType);
    return Scaffold(
      backgroundColor: kbuttonColor2,
      body: Center(
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
                CommonTextField(
                  emailController: emailController,
                  title: "Email",
                  hideText: false,
                ),
                CommonSpace(),
                CommonTextField(
                  emailController: passwordController,
                  title: "Password",
                  hideText: true,
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
                      // print();
                      // Provider.of<UserType>(context, listen: false)
                      //     .changeUserType("Cutomer");

                      Navigator.pushNamed(context, '/skip');
                    }),

                Row(children: [
                  Checkbox(
                      value: receiveOffersCheck,
                      onChanged: (value) {
                        setState(() {
                          receiveOffersCheck = value;
                        });
                        print(receiveOffersCheck);
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

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    @required this.emailController,
    @required this.title,
    @required this.hideText,
  });

  final TextEditingController emailController;
  final String title;
  final bool hideText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextField(
        obscureText: hideText,
        controller: emailController,
        style: TextStyle(
            // fontSize: 16
            ),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          border: OutlineInputBorder(),
          // labelText: 'Password',
          hintText: title,
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CommonButton.dart';
import 'package:venyss/components/CustomSecurityTextField.dart';
import 'package:venyss/constants.dart';

class Security extends StatefulWidget {
  @override
  _SecurityState createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  final currentPasswordControll = TextEditingController();
  final newPasswordControll = TextEditingController();
  final confirmPasswordControll = TextEditingController();

  String currentPasswordHint;
  bool hidePassword;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: kbuttonColor2,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
        ),
        backgroundColor: kbuttonColor2,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: new AssetImage('img/logo-standard.png'),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomSecurityTextField(
                    currentPasswordControll: currentPasswordControll,
                    currentPasswordHint: "Enter Current Password"),
                CustomSecurityTextField(
                    currentPasswordControll: newPasswordControll,
                    currentPasswordHint: "Enter New Password"),
                CustomSecurityTextField(
                    currentPasswordControll: confirmPasswordControll,
                    currentPasswordHint: "Enter New Password to Confirm"),
                CommonButtom(
                    title: "Save", color: kbuttonColor1, onpress: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

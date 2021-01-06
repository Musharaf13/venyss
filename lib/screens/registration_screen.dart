import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CommonButton.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/guesthome_screen.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbuttonColor2,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: kbuttonColor2,
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            "Registration Screen is Undecided",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
          CommonButtom(
            title: "For now Go to home Screen",
            color: kbuttonColor1,
            onpress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GuestHome()),
              );
            },
          ),
        ],
      )),
    );
  }
}

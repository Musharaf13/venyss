import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'CommonButton.dart';

class AndroidDialogBox extends StatelessWidget {
  const AndroidDialogBox({
    @required this.title,
    @required this.onPress,
  });

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      content: Container(
        height: 100,
        child: Center(
          child: CommonButtom(
            title: "Register",
            color: kbuttonColor1,
            onpress: onPress,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSecurityTextField extends StatelessWidget {
  const CustomSecurityTextField({
    @required this.currentPasswordControll,
    @required this.currentPasswordHint,
  });

  final TextEditingController currentPasswordControll;
  final String currentPasswordHint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        child: TextField(
          controller: currentPasswordControll,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 10,
            ),
            hintText: currentPasswordHint,
          ),
          obscureText: true,
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCreditCardField extends StatelessWidget {
  const CustomCreditCardField(
      {@required this.cardNumberController,
      @required this.cardNumberHint,
      this.hideText});

  final TextEditingController cardNumberController;
  final String cardNumberHint;
  final bool hideText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: cardNumberController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 10,
          ),
          hintText: cardNumberHint,
        ),
        obscureText: hideText == null ? false : true,
      ),
    );
  }
}

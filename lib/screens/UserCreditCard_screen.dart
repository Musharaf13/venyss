import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CommonButton.dart';
import 'package:venyss/components/CustomCreditCardField.dart';
import 'package:venyss/constants.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  final cardNumberController = TextEditingController();
  final cardDateController = TextEditingController();
  final cardCVCNumberController = TextEditingController();

  String currentPasswordHint;
  bool hidePassword;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                Text(
                  "Enter Credit/Debit Card Details",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextField(
                    controller: cardNumberController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      hintText: "Enter Card Number",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomCreditCardField(
                        cardNumberController: cardDateController,
                        cardNumberHint: "Enter Card Number"),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCreditCardField(
                        cardNumberController: cardCVCNumberController,
                        cardNumberHint: "Enter CVC Number",hideText: true,),
                  ],
                ),
                CommonButtom(title: "Add", color: kbuttonColor1, onpress: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

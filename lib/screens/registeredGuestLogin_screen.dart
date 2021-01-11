import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:venyss/Data%20Models/UserType.dart';
import 'package:venyss/components/CommonButton.dart';
import 'package:venyss/components/CommonSpace.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/UserOrders_screen.dart';

import 'guesthome_screen.dart';

class RegisteredGuestLogin extends StatefulWidget {
  @override
  _RegisteredGuestLoginState createState() => _RegisteredGuestLoginState();
}

class _RegisteredGuestLoginState extends State<RegisteredGuestLogin> {
  bool validNumber = true;
  final numberFieldController = TextEditingController();
  final otpFieldController = TextEditingController();
  @override
  String _selectedCountryCode = '+60';
  List<String> _countryCodes = Codes;
  String userType;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
          backgroundColor: kbuttonColor1,
          elevation: 0,
          title: Image(
            image: new AssetImage('img/logo2.png'),
            height: 40,
            width: 40,
          ),
          // centerTitle: true,
        ),
        body: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: validNumber
                  ? Column(
                      children: [
                        Image(
                          height: 180,
                          width: 180,
                          image: new AssetImage('img/logo-standard.png'),
                        ),
                        Text(
                          "Please enter your mobile number to continue. your mobile number will only be used to validate your account and will not be share with any third party.",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        CommonSpace(),
                        Container(
                          width: 300,
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                // width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(20)),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton(
                                      value: _selectedCountryCode,
                                      items: _countryCodes.map((String value) {
                                        return new DropdownMenuItem<String>(
                                            value: value,
                                            child: new Text(
                                              value,
                                              style: TextStyle(fontSize: 12.0),
                                            ));
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedCountryCode = value;
                                        });
                                      },
                                      style: Theme.of(context).textTheme.title,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: numberFieldController,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: kbuttonColor2,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.5, horizontal: 10),
                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(20)),
                                    ),

                                    // hintText: 'Password',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CommonSpace(),
                        CommonButtom(
                          title: "Continue",
                          color: kbuttonColor1,
                          onpress: () {
                            setState(() {
                              validNumber = false;
                              print(_selectedCountryCode +
                                  numberFieldController.text);
                            });
                          },
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Image(
                          height: 180,
                          width: 180,
                          image: new AssetImage('img/logo-standard.png'),
                        ),
                        Text(
                          "Please enter the OPT (One Time Password) sent to your mobile",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        CommonSpace(),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Mobile Number:",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      _selectedCountryCode +
                                          numberFieldController.text,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "OTP",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      width: 100,
                                      child: TextField(
                                        controller: otpFieldController,
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                            horizontal: 10,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CommonButtom(
                                    title: "Login",
                                    color: kbuttonColor1,
                                    onpress: () {
                                      Provider.of<UserType>(context,
                                              listen: false)
                                          .changeUserType("customer");
                                      Navigator.pushNamed(context, '/Orders');
                                    }),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Did not received OTP?"),
                            FlatButton(
                              onPressed: () {},
                              child: Text("Resend"),
                            ),
                          ],
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              validNumber = true;
                            });
                          },
                          child: Text("Change Number"),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

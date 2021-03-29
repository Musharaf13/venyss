import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:venyss/Data%20Models/UserType.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/components/IOSDialogBox.dart';
import 'package:venyss/components/AndroidDialogBox.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/UserAccount_screen.dart';
import 'package:venyss/screens/guestNotification_screen.dart';
import 'package:venyss/screens/registeredGuestLogin_screen.dart';

class GuestHome extends StatefulWidget {
  @override
  _GuestHomeState createState() => _GuestHomeState();
}

class _GuestHomeState extends State<GuestHome> {
  final searchFieldController = TextEditingController();

  Future<void> _showMyDialog(String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AndroidDialogBox(
          title: message,
          onPress: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisteredGuestLogin()),
            );
          },
        );
      },
    );
  }

//Code for Registration PopUp AndroidIOS
  Future<void> _showMyDialogIOS(String message) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return IOSDialogBox(
            title: message,
            onPress: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisteredGuestLogin()),
              );
            },
          );
        });
  }

  int currentIndex = 0;

//Navigation Menu Code
  void _onItemTapped(int index) {
    setState(() {
      print(index);
      switch (index) {
        case 0:
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GuestHome()),
          );
          break;
        case 1:
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GuestNotification()),
          );
          break;
        case 2:
          print("I am at gues 2t");
          print(userType + "2");

          if (userType == "guest") {
            Platform.isAndroid
                ? _showMyDialog("Register to view Orders and other features")
                : _showMyDialogIOS(
                    "Register to view Orders and other features");
          } else {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/userAccount');
          }
          break;
        case 3:
          if (userType == "guest") {
            Platform.isAndroid
                ? _showMyDialog("Register to view Orders and other features")
                : _showMyDialogIOS(
                    "Register to view Orders and other features");
          } else {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserAccount()),
            );
          }
          break;
      }
    });
  }

  String userType;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      userType = Provider.of<UserType>(context).userType;
    });
    // print(userType + "11");
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbuttonColor2,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(102),
          child: AppBar(
            elevation: 0,
            leading: Image(
              image: new AssetImage('img/logo2.png'),
            ),
            backgroundColor: kbuttonColor1,
            title: Text("Home", style: TextStyle(color: Colors.black)),
            bottom: PreferredSize(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: searchFieldController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kbuttonColor2,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 7, horizontal: 10),
                            isDense: true,
                            border: OutlineInputBorder(),
                            // hintText: 'Password',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.shopping_cart,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 30,
                      )
                    ],
                  ),
                ),
                preferredSize: null),
          ),
        ),
        body: Container(
          child: Text(userType),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: currentIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

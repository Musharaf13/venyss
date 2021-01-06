import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/screens/guestMe_screen.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/registration_screen.dart';
import 'guestNotification_screen.dart';
import 'guesthome_screen.dart';
import 'package:venyss/components/AndroidDialogBox.Dart';
import 'package:venyss/components/IOSDialogBox.Dart';

class GuestOrders extends StatefulWidget {
  @override
  _GuestOrdersState createState() => _GuestOrdersState();
}

class _GuestOrdersState extends State<GuestOrders> {
  void _onItemTapped(int index) {
    setState(() {
      print(index);
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GuestHome()),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GuestNotification()),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GuestOrders()),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GuestMe()),
          );
          break;
      }
    });
  }

//Code for Registration PopUp Android
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AndroidDialogBox(
          title: "Register to view Orders and other features",
          onPress: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Registration()),
            );
          },
        );
      },
    );
  }

//Code for Registration PopUp AndroidIOS
  Future<void> _showMyDialogIOS() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return IOSDialogBox(
            title: "Register to view Orders and other features",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Registration()),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero,
        () => Platform.isAndroid ? _showMyDialog() : _showMyDialogIOS());
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbuttonColor2,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: kbuttonColor2,
        ),
        body: Column(
          children: [
            Container(
              child: Text(
                "Registration Pop Up Under development",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            FlatButton(
              onPressed: () {
                // _onAlertButtonPressed(context);
                // _showMyDialog();
              },
              child: Text("Pop Up"),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 2,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

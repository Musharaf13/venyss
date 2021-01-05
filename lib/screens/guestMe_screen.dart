import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/constants.dart';
import 'guestNotification_screen.dart';
import 'guestOrders_screen.dart';
import 'guesthome_screen.dart';

class GuestMe extends StatefulWidget {
  @override
  _GuestMeState createState() => _GuestMeState();
}

class _GuestMeState extends State<GuestMe> {
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

  @override
  Widget build(BuildContext context) {
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
        body: Container(
          child: Text(
            "Registration Pop Up Under development",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 3,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

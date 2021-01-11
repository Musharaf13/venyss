import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:venyss/Data%20Models/UserType.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/components/CustomOrderStatusCard.dart';
import 'package:venyss/components/IOSDialogBox.dart';
import 'package:venyss/components/AndroidDialogBox.dart';
import 'package:venyss/components/NotificationListItem.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/registeredGuestLogin_screen.dart';

import 'UserAccount_screen.dart';
import 'UserOrders_screen.dart';
import 'guesthome_screen.dart';

class GuestNotification extends StatefulWidget {
  @override
  _GuestNotificationState createState() => _GuestNotificationState();
}

class _GuestNotificationState extends State<GuestNotification> {
  //Code for Registration PopUp Android
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
          if (userType == "guest") {
            Platform.isAndroid
                ? _showMyDialog("Register to view Orders and other features")
                : _showMyDialogIOS(
                    "Register to view Orders and other features");
          } else {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserOrders()),
            );
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
    // TODO: implement initState
    super.initState();
  }

  bool notificationOrderStatucSelector = true;
  final searchOrderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    userType = Provider.of<UserType>(context).userType;
    print(userType);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kbuttonColor2,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: kbuttonColor2,
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kbuttonColor1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              splashColor: kbuttonColor2,
                              icon: Icon(
                                Icons.notification_important,
                                size: 40,
                              ),
                              onPressed: () {
                                setState(() {
                                  notificationOrderStatucSelector = true;
                                });
                              }),
                          Text("Notifications"),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              splashColor: kbuttonColor2,
                              icon: Icon(
                                Icons.search,
                                size: 40,
                              ),
                              onPressed: () {
                                setState(() {
                                  notificationOrderStatucSelector = false;
                                });
                              }),
                          Text("Order Status"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(55)),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: notificationOrderStatucSelector
              ? ListView(
                  children: const <Widget>[
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                  ],
                )
              : Column(
                  children: [
                    Container(
                      child: TextField(
                        controller: searchOrderController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: kbuttonColor2,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                          isDense: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          // hintText: 'Password',
                        ),
                      ),
                    ),
                    CustomOrderStatusCard(
                      title: "Order Recieved",
                      date: "01/06/2021",
                      status: true,
                    ),
                    CustomOrderStatusCard(
                      title: "Payment Recieved",
                      date: "01/06/2021",
                      status: false,
                    ),
                    CustomOrderStatusCard(
                      title: "Order Processing",
                      date: "01/06/2021",
                      status: false,
                    ),
                    CustomOrderStatusCard(
                      title: "Shipping Processing",
                      date: "01/06/2021",
                      status: false,
                    ),
                    CustomOrderStatusCard(
                      title: "Order Recieved",
                      date: "01/06/2021",
                      status: false,
                    ),
                  ],
                ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 1,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

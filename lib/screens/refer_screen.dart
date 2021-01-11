import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/components/IOSDialogBox.dart';
import 'package:venyss/components/AndroidDialogBox.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/registeredGuestLogin_screen.dart';
import 'package:venyss/screens/registration_screen.dart';
import 'guestNotification_screen.dart';
import 'UserOrders_screen.dart';
import 'guesthome_screen.dart';
import 'package:share/share.dart';

class Refer extends StatefulWidget {
  @override
  _ReferState createState() => _ReferState();
}

class _ReferState extends State<Refer> {
  String purchasedCount = "0";
  String registeredCount = "0";
  String key = "d42xcdeft";
  String subject = 'follow me';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbuttonColor2,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            "Refer a Friend",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: kbuttonColor2,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    width: 110,
                    height: 110,
                    image: new AssetImage('img/redeem.jpg'),
                  ),
                  Text(
                    "Refer a friend get RM5",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "When you friend register with VENYSS App" +
                        " with your referal code and completes a purchase of" +
                        " RM90, you will receive the following rewards:",
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    children: [
                      Text("1st referral - RM5"),
                      Text("2nd referral - RM5"),
                      Text("3rd referral - RM5"),
                    ],
                  ),
                  Text("Not only that, your friend will also get RM5"),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: kbuttonColor1,
                      border: Border.all(),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: kbuttonColor2,
                            border: Border.all(),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20)),
                          ),
                          child: Row(
                            children: [
                              Text(key),
                              SizedBox(
                                width: 15,
                              ),
                              IconButton(
                                icon: Icon(Icons.content_copy),
                                onPressed: () {
                                  FlutterClipboard.copy(key);
                                  Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text("Referal copied to clipbaord"),
                                    ),
                                  );
                                  print("Copied");
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            final RenderBox box = context.findRenderObject();
                            Share.share(key,
                                subject: subject,
                                sharePositionOrigin:
                                    box.localToGlobal(Offset.zero) & box.size);
                            print("Shared");
                          },
                          child: Text(
                            "Share",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: kbuttonColor1,
                    height: 3,
                  ),
                  Text(
                    "Your Referrals",
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Registered"),
                          Text(
                            registeredCount,
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Purchased"),
                          Text(
                            purchasedCount,
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ],
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

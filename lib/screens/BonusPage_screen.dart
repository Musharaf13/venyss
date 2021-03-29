import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/components/CustomOrderCard.dart';
import 'package:venyss/components/OnTapImageButton.dart';
import 'package:venyss/screens/UserAccount_screen.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/redeem_screen.dart';
import 'package:venyss/screens/refer_screen.dart';
import 'package:venyss/screens/registeredGuestLogin_screen.dart';
import 'package:venyss/screens/registration_screen.dart';
import 'package:venyss/screens/voucher_screen.dart';
import 'guestNotification_screen.dart';
import 'guesthome_screen.dart';
import 'package:venyss/components/AndroidDialogBox.Dart';
import 'package:venyss/components/IOSDialogBox.Dart';

class BonusPage extends StatefulWidget {
  @override
  _BonusPageState createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  String temp = "Temp";

  bool partner = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: kbuttonColor2,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(220),
              child: Stack(
                children: [
                  AppBar(
                    centerTitle: true,
                    iconTheme: IconThemeData(
                      color: Colors.black,
                    ),
                    // title:
                    // flexibleSpace:
                    bottom: PreferredSize(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Center(child: Text("Bonus Value for this Month")),
                            Center(
                              child: Text(
                                "500",
                                style: TextStyle(
                                  fontSize: 45,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 75,
                              color: kbuttonColor2,
                              // child: Text("white"),
                            ),
                          ],
                        ),
                        preferredSize: Size.fromHeight(140)),

                    elevation: 0,
                    backgroundColor: kbuttonColor1,
                    // flexibleSpace:
                    // bottom:
                  ),
                  Positioned(
                      top: 125,
                      left: 15,
                      child: Container(
                        width: 330,
                        height: 80,
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                        decoration: BoxDecoration(
                          color: kbuttonColor2,
                          border: Border.all(color: kbuttonColor1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        // width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Accumulated Bonus Value ",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "RM120.60",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        // height: 70,
                      )),
                ],
              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 30,
                  color: kbuttonColor1,
                  child: Text(
                    "March 2020",
                  ),
                ),
                Container(
                  height: 316,
                  child: ListView(
                    children: [
                      CustomOrderCard(
                          title: "9899- BRACELET KERAWANG",
                          date: "Mar 01, 2020",
                          price: "RM156.00"),
                      Divider(
                        color: kbuttonColor1,
                        height: 2,
                      ),
                      CustomOrderCard(
                          title: "9899- BRACELET KERAWANG",
                          date: "Mar 01, 2020",
                          price: "RM156.00"),
                      Divider(
                        color: kbuttonColor1,
                        height: 2,
                      ),
                      CustomOrderCard(
                          title: "9899- BRACELET KERAWANG",
                          date: "Mar 01, 2020",
                          price: "RM156.00"),
                      Divider(
                        color: kbuttonColor1,
                        height: 2,
                      ),
                      CustomOrderCard(
                          title: "9899- BRACELET KERAWANG",
                          date: "Mar 01, 2020",
                          price: "RM156.00"),
                      Divider(
                        color: kbuttonColor1,
                        height: 2,
                      ),
                      CustomOrderCard(
                          title: "9899- BRACELET KERAWANG",
                          date: "Mar 01, 2020",
                          price: "RM156.00"),
                      Divider(
                        color: kbuttonColor1,
                        height: 2,
                      ),
                      CustomOrderCard(
                          title: "9899- BRACELET KERAWANG",
                          date: "Mar 01, 2020",
                          price: "RM156.00"),
                      Divider(
                        color: kbuttonColor1,
                        height: 2,
                      ),
                      CustomOrderCard(
                          title: "9899- BRACELET KERAWANG",
                          date: "Mar 01, 2020",
                          price: "RM156.00"),
                      Divider(
                        color: kbuttonColor1,
                        height: 2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

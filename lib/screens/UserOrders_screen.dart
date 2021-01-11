import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:venyss/Data%20Models/UserType.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/components/CustomOrderCard.dart';
import 'package:venyss/components/OnTapImageButton.dart';
import 'package:venyss/screens/BonusPage_screen.dart';
import 'package:venyss/screens/ProductsList_screen.dart';
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

class UserOrders extends StatefulWidget {
  @override
  _UserOrdersState createState() => _UserOrdersState();
}

class _UserOrdersState extends State<UserOrders> {
  String temp = "Temp";
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GuestNotification()),
          );
          break;
        case 2:
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserOrders()),
          );
          break;
        case 3:
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserAccount()),
          );
          break;
      }
    });
  }

  String userType;

  bool partner = true;
  @override
  Widget build(BuildContext context) {
    userType = Provider.of<UserType>(context).userType;
    print(userType);
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
                    title: userType == "partner"
                        ? Text(
                            "Silver",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        : null,
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    // title:
                    // flexibleSpace:
                    bottom: PreferredSize(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Center(child: Text("Venyss Points")),
                            Center(
                              child: Text(
                                "12990",
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
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                        decoration: BoxDecoration(
                          color: kbuttonColor2,
                          border: Border.all(color: kbuttonColor1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        // width: 100,
                        child: userType == "partner"
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  OnTapImageButton(
                                    title: "Product List",
                                    imgPath: 'img/addCart.png',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductListPage(),
                                        ),
                                      );
                                    },
                                  ),
                                  OnTapImageButton(
                                    title: "Bonus",
                                    imgPath: 'img/redeem.jpg',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => BonusPage(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  OnTapImageButton(
                                    title: "Challenge",
                                    imgPath: 'img/challenge.jpg',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Refer(),
                                        ),
                                      );
                                    },
                                  ),
                                  OnTapImageButton(
                                    title: "Voucher",
                                    imgPath: 'img/voucherM.png',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Voucher(),
                                        ),
                                      );
                                    },
                                  ),
                                  // SizedBox(
                                  //   width: 10,
                                  // ),
                                  OnTapImageButton(
                                    title: "Redeem",
                                    imgPath: 'img/redeem.jpg',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Redeem()),
                                      );
                                    },
                                  ),
                                  // SizedBox(
                                  //   width: 10,
                                  // ),
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
            bottomNavigationBar: CustomBottomNavigationBar(
              currentIndex: 2,
              onItemTapped: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}

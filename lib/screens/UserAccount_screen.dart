import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:venyss/Data%20Models/UserType.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/components/IOSDialogBox.dart';
import 'package:venyss/components/AndroidDialogBox.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/RecruitEarn_screen.dart';
import 'package:venyss/screens/UserCreditCard_screen.dart';
import 'package:venyss/screens/UserHelp_screen.dart';
import 'package:venyss/screens/UserPremiumCard_screen.dart';
import 'package:venyss/screens/UserPurchaseHistory.dart';
import 'package:venyss/screens/refer_screen.dart';
import 'package:venyss/screens/registeredGuestLogin_screen.dart';
import 'package:venyss/screens/registration_screen.dart';
import 'package:venyss/screens/UserSecurity_screen.dart';
import 'guestNotification_screen.dart';
import 'UserOrders_screen.dart';
import 'guesthome_screen.dart';

class UserAccount extends StatefulWidget {
  @override
  _UserAccountState createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
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

  String title = "";
  String subtitle = "";
  bool partner = true;
  @override
  Widget build(BuildContext context) {
    userType = Provider.of<UserType>(context).userType;
    return ChangeNotifierProvider<UserType>(
      create: (context) => UserType(),
      child: Consumer<UserType>(
        builder: (context, provider, child) => SafeArea(
          child: Scaffold(
            backgroundColor: kbuttonColor2,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              textTheme: TextTheme(
                headline6: TextStyle(
                  color: Colors.black,
                ),
              ),
              // title:
              elevation: 0,
              backgroundColor: kbuttonColor2,
              bottom: PreferredSize(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Muhammad Qois Bin",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Mohamed Arshad",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text("View and Edit Profile"),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: kbuttonColor2,
                      ),
                    ),
                  ],
                ),
                preferredSize: Size.fromHeight(30),
              ),
            ),
            body: userType != "partner"
                ? ListView(
                    children: [
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Security",
                        subtitle: "Passoword, Pin and Fingerprint",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Security(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Credit/Debit Cards",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreditCard(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Refer and Earn",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Refer(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "My Order",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => History(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Premium Card",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PremiumCard(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Help",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Help(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Log Out",
                        onTap: () {},
                      ),
                    ],
                  )
                : ListView(
                    children: [
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Security",
                        subtitle: "Passoword, Pin and Fingerprint",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Security(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Credit/Debit Cards",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreditCard(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Recuit and Earn",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecruitEarn(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "My Order",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => History(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Genealogy",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PremiumCard(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Help",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Help(),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 3,
                        color: kbuttonColor1,
                      ),
                      CustomAccountOptionsCard(
                        title: "Log Out",
                        onTap: () {},
                      ),
                    ],
                  ),
            bottomNavigationBar: CustomBottomNavigationBar(
              currentIndex: 3,
              onItemTapped: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAccountOptionsCard extends StatelessWidget {
  CustomAccountOptionsCard({
    Key key,
    @required this.title,
    this.subtitle,
    @required this.onTap,
  }) : super(key: key);

  final String title;
  String subtitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(title),
        subtitle: subtitle == null ? null : Text(subtitle),
        trailing: Icon(
          Icons.arrow_right,
          size: 40,
        ),
      ),
    );
  }
}

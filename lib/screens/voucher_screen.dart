import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/components/IOSDialogBox.dart';
import 'package:venyss/components/AndroidDialogBox.dart';
import 'package:venyss/components/NewVoucherCard.dart';
import 'package:venyss/components/NotificationListItem.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/registeredGuestLogin_screen.dart';
import 'package:venyss/screens/registration_screen.dart';
import 'guestNotification_screen.dart';
import 'UserOrders_screen.dart';
import 'guesthome_screen.dart';
import 'package:share/share.dart';

class Voucher extends StatefulWidget {
  @override
  _VoucherState createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  String purchasedCount = "0";
  String registeredCount = "0";
  String key = "d42xcdeft";
  String subject = 'follow me';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: kbuttonColor2,
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            title: Text(
              "Voucher a Friend",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: kbuttonColor2,
            bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: "New",
                ),
                Tab(
                  text: "Used",
                ),
                Tab(
                  text: "Expired",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                ],
              ),
              ListView(
                children: [
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                ],
              ),
              ListView(
                children: [
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                  NewVoucherCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

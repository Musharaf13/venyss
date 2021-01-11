import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CustomOrderCard.dart';
import 'package:venyss/components/NewVoucherCard.dart';
import 'package:venyss/constants.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: kbuttonColor2,
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            title: Text(
              "History",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: kbuttonColor2,
            bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Puchase",
                ),
                Tab(
                  text: "Top Up",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  CustomOrderCard(
                      title: "9999- BRACELET KERAWANG",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "9999- BRACELET KERAWANG",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "9999- BRACELET KERAWANG",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "9999- BRACELET KERAWANG",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "9999- BRACELET KERAWANG",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "9999- BRACELET KERAWANG",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "9999- BRACELET KERAWANG",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                ],
              ),
              ListView(
                children: [
                  CustomOrderCard(
                      title: "Debit Card",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "Debit Card",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "Debit Card",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "Debit Card",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "Debit Card",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "Debit Card",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                  CustomOrderCard(
                      title: "Debit Card",
                      date: "Mar 01, 2020",
                      price: "RM156.00"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

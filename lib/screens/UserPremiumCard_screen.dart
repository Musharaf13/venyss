import 'dart:io';

import 'package:barcode_flutter/barcode_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/constants.dart';

class PremiumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbuttonColor2,
      appBar: AppBar(
        backgroundColor: kbuttonColor2,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "VENYSS Premium Card",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Premium Card",
                style: TextStyle(fontSize: 18),
              ),
              BarCodeImage(
                params: Code39BarCodeParams(
                  "017154",
                  withText: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 30,
                  ),
                  Text(
                    "Active",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Issued By",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Type",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Earn Points",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Virtual",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Yes",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "XXX",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

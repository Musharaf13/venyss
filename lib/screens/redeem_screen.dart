import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CommonButton.dart';
import 'package:venyss/constants.dart';

class Redeem extends StatefulWidget {
  @override
  _RedeemState createState() => _RedeemState();
}

class _RedeemState extends State<Redeem> {
  double sliderValue = 0.0;
  double test = 1.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbuttonColor2,
        appBar: AppBar(
          backgroundColor: kbuttonColor2,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            "Redeem Points",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Conver your Premium Club points to My Wallet balace.",
                textAlign: TextAlign.center,
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: kbuttonColor1,
                  // border: Border.all(),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "RM",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text("0.00"),
                  ],
                ),
              ),
              Text("Spend RM3 = 1 point"),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Theme(
                    data: ThemeData(
                      sliderTheme: SliderThemeData(
                        thumbColor: kbuttonColor1,
                        activeTrackColor: kbuttonColor1,
                        // inactiveTrackColor: kbuttonColor1,
                        // valueIndicatorTextStyle:
                        //     TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    child: Slider(
                      value: sliderValue,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                        print(sliderValue);
                      },
                      label: sliderValue.toStringAsFixed(0),
                      max: 2770,
                      min: 0,
                      divisions: 2770,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0"),
                        Text("Enter Points"),
                        Text("2,770"),
                      ],
                    ),
                  ),
                ],
              ),
              CommonButtom(
                title: "Redeem",
                color: kbuttonColor1,
                onpress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

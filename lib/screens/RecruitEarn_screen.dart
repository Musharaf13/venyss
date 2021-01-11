import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:venyss/constants.dart';

class RecruitEarn extends StatefulWidget {
  @override
  _RecruitEarnState createState() => _RecruitEarnState();
}

class _RecruitEarnState extends State<RecruitEarn> {
  String purchasedCount = "0";
  String registeredCount = "0";
  String key = "d42xcdeft";
  String subject = 'follow me';
  int level = 2;

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
            "Recruit and Earn",
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
                    image: new AssetImage('img/searchingPeople.jpg'),
                  ),
                  Text(
                    "Recruit Family, Friends and start to earn more",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "When you friend register with VENYSS App" +
                        " with your referal code and completes a purchase of" +
                        " RM90, you will receive the following rewards:",
                    textAlign: TextAlign.center,
                  ),
                  level == 0
                      ? Text("First Referral - RM5")
                      : level == 1
                          ? CustomPartnerPercentageMessage(
                              percentage: "2%",
                              amount: "10,000",
                            )
                          : CustomPartnerPercentageMessage(
                              percentage: "5%",
                              amount: "20,000",
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

class CustomPartnerPercentageMessage extends StatelessWidget {
  const CustomPartnerPercentageMessage({
    Key key,
    @required this.percentage,
    @required this.amount,
  }) : super(key: key);

  final String percentage;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Get ",
              style: TextStyle(color: Colors.black87),
            ),
            TextSpan(
              text: percentage,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: " for every purchase from Referral with your" +
                  " monthly purchase minimum RM" +
                  amount +
                  " per month",
              style: TextStyle(color: Colors.black87),
            ),
          ]),
        ),
        SizedBox(
          height: 5,
        ),
        Text("Bonus Value RM5"),
      ],
    );
  }
}

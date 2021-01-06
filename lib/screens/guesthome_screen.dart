import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/constants.dart';
import 'package:venyss/screens/guestMe_screen.dart';
import 'package:venyss/screens/guestNotification_screen.dart';

import 'guestOrders_screen.dart';

class GuestHome extends StatefulWidget {
  @override
  _GuestHomeState createState() => _GuestHomeState();
}

class _GuestHomeState extends State<GuestHome> {
  void _onItemTapped(int index) {
    setState(() {
      print(index);
      switch (index) {
        case 0:
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GuestOrders()),
          );
          break;
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GuestMe()),
          );
          break;
      }
    });
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbuttonColor2,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(102),
          child: AppBar(
            elevation: 0,
            leading: Image(
              image: new AssetImage('img/logo2.png'),
            ),
            backgroundColor: kbuttonColor1,
            title: Text("Home", style: TextStyle(color: Colors.black)),
            bottom: PreferredSize(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kbuttonColor2,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 7, horizontal: 10),
                            isDense: true,
                            border: OutlineInputBorder(),
                            // hintText: 'Password',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.shopping_cart,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 30,
                      )
                    ],
                  ),
                ),
                preferredSize: null),
          ),
        ),
        body: Container(
          child: Text("Life is great"),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: currentIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

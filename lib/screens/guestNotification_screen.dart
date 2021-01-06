import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venyss/components/CustomBottomNaviagtionBar.dart';
import 'package:venyss/constants.dart';

import 'guestMe_screen.dart';
import 'guestOrders_screen.dart';
import 'guesthome_screen.dart';

class GuestNotification extends StatefulWidget {
  @override
  _GuestNotificationState createState() => _GuestNotificationState();
}

class _GuestNotificationState extends State<GuestNotification> {
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

  bool notificationOrderStatucSelector = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbuttonColor2,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: kbuttonColor2,
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kbuttonColor1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              splashColor: kbuttonColor2,
                              icon: Icon(
                                Icons.notification_important,
                                size: 40,
                              ),
                              onPressed: () {
                                setState(() {
                                  notificationOrderStatucSelector = true;
                                });
                              }),
                          Text("Notifications"),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              splashColor: kbuttonColor2,
                              icon: Icon(
                                Icons.search,
                                size: 40,
                              ),
                              onPressed: () {
                                setState(() {
                                  notificationOrderStatucSelector = false;
                                });
                              }),
                          Text("Order Status"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(55)),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: notificationOrderStatucSelector
              ? ListView(
                  children: const <Widget>[
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                    Divider(),
                    NotificationListItem(),
                  ],
                )
              : TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kbuttonColor2,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                    isDense: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    // hintText: 'Password',
                  ),
                ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 1,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}

class NotificationListItem extends StatelessWidget {
  const NotificationListItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading: FlutterLogo(size: 72.0),
        title: Text(
          '9Promo! Best Buy this month',
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          'Read more.',
          style: TextStyle(color: Colors.black),
        ),
        trailing: Icon(
          Icons.arrow_right,
          size: 40,
        ),
        // isThreeLine: true,
      ),
    );
  }
}

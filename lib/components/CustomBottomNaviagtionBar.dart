import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    @required this.currentIndex,
    @required this.onItemTapped,
  });

  final int currentIndex;
  final Function onItemTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black12,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active),
          title: Text("Notification"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note),
          title: Text("My Order"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("Me"),
        ),
      ],
      currentIndex: currentIndex,
      onTap: onItemTapped,
    );
  }
}

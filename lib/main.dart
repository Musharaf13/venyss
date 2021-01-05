import 'package:flutter/material.dart';
import 'package:venyss/screens/guestLogin_screen.dart';
import 'package:venyss/screens/loading_screen.dart';

void main() {
  runApp(MaterialApp(
    builder: (context, child) {
      return ScrollConfiguration(
        behavior: MyBehavior(),
        child: child,
      );
    },
    theme: ThemeData(
      // Define the default brightness and colors.
      // brightness: Brightness.dark,
      primaryColor: Colors.black,
      focusColor: Colors.black,
      accentColor: Colors.black,
      // colorScheme: ColorScheme.dark(),
    ),

    // theme: Theme(data: ThemeData.dark(), child: null),
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/guestLogin': (context) => GuestLogin(),
    },
  ));
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

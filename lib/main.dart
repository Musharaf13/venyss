import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:venyss/Data%20Models/UserType.dart';
import 'package:venyss/screens/UserAccount_screen.dart';
import 'package:venyss/screens/UserOrders_screen.dart';
import 'package:venyss/screens/guesthome_screen.dart';
import 'package:venyss/screens/login_screen.dart';
import 'package:venyss/screens/skip_screen.dart';
import 'package:venyss/screens/loading_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserType(),
      child: MaterialApp(
        // builder: (context, child) {
        //   return ScrollConfiguration(
        //     behavior: MyBehavior(),
        //     child: child,
        //   );
        // },
        theme: ThemeData(
          // Define the default brightness and colors.
          // brightness: Brightness.dark,
          primaryColor: Colors.black,
          focusColor: Colors.black,
          accentColor: Colors.black,
        ),

        title: 'Named Routes Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/guestLogin': (context) => Login(),
          '/skip': (context) => GuestLogin(),
          '/guest': (context) => GuestHome(),
          '/Orders': (context) => UserOrders(),
          '/userAccount': (context) => UserAccount(),
        },
      ),
    ),
  );
}

// class MyBehavior extends ScrollBehavior {
//   @override
//   Widget buildViewportChrome(
//       BuildContext context, Widget child, AxisDirection axisDirection) {
//     return child;
//   }
// }

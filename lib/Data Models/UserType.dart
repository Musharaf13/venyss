import 'package:flutter/cupertino.dart';
class UserType extends ChangeNotifier {
  String userType = "guest";
  void changeUserType(String newUser) {
    userType = newUser;
    notifyListeners();
  }
}

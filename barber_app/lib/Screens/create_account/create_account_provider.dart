import 'package:flutter/material.dart';

class CreateAccountProvider with ChangeNotifier {
  bool isValue = false;

  bool get isChecked => isValue;

  set isChecked(bool value) {
    isValue = value;
    notifyListeners();
  }
}

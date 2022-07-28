import 'package:barber_app/screens/create_account/create_account_provider.dart';
import 'package:flutter/material.dart';

class PofessionScreenProvider extends ChangeNotifier {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Monday"), value: "Monday"),
      DropdownMenuItem(child: Text("Tuesday"), value: "Tuesday"),
      DropdownMenuItem(child: Text("Wednesday"), value: "Wednesday"),
      DropdownMenuItem(child: Text("Thursday"), value: "Thursday"),
      DropdownMenuItem(child: Text("Friday"), value: "Friday"),
      DropdownMenuItem(child: Text("Saturday"), value: "Saturday"),
      DropdownMenuItem(child: Text("Sunday"), value: "Sunday"),
    ];
    return menuItems;
  }

  String selectValue = "Monday";

  DaysDropDown(var getVal) {
    selectValue = getVal;
    notifyListeners();
  }
}

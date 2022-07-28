import 'package:barber_app/screens/create_account/create_account_provider.dart';
import 'package:flutter/material.dart';

class PriceRangeProvider extends ChangeNotifier {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("\$ 16-13"), value: "\$ 16-13"),
      DropdownMenuItem(child: Text("\$ 16-14"), value: "\$ 16-14"),
      DropdownMenuItem(child: Text("\$ 16-15"), value: "\$ 16-15"),
      DropdownMenuItem(child: Text("\$ 16-16"), value: "\$ 16-16"),
    ];
    return menuItems;
  }

  String selectedValue = "\$ 16-13";

  get selectValues => null;

  myOnChangeFun(var getVal) {
    selectedValue = getVal;
    notifyListeners();
  }
}

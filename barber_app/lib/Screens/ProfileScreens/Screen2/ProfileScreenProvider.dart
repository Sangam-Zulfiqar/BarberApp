import 'package:flutter/cupertino.dart';

class ProfileProvider extends ChangeNotifier {
  bool textfieldEnabler = false;

  changeTextFieldEnabling() {
    textfieldEnabler = true;

    print("is this building...");
    notifyListeners();
  }
}

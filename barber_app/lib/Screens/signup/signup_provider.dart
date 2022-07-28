
  import 'package:flutter/material.dart';



class SignupProvider extends ChangeNotifier {

   bool isSwitched = false;  

  toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      
        isSwitched = true;  
        notifyListeners();  
    
      print('Switch Button is ON');  
    }  
    else  
    {  
    
        isSwitched = false; 
        notifyListeners();  
      print('Switch Button is OFF');  
    }  

    notifyListeners();
  }  



}
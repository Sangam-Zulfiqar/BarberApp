import 'package:barber_app/Screens/OrderScreen/OrderScreen.dart';
import 'package:barber_app/Screens/ProfessionScreen2/ProfessionScreen2.dart';
import 'package:barber_app/Screens/ProfileScreen2/ProfileScreen2.dart';
import 'package:barber_app/Screens/UserProfile/PersonProfileScreen2.dart';

import 'package:barber_app/Screens/chatscreens/ChatProfile.dart';
import 'package:barber_app/Screens/price_range/price_range_screen.dart';
import 'package:barber_app/Screens/signup/signup_screen.dart';
import 'package:barber_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pregnancy Tracker',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ScreenUtilInit(
        designSize: Size(width, height),
        builder: (_, child) => SplashScreen(),
      ),
    );
  }
}

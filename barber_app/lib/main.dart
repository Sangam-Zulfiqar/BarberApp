import 'package:barber_app/Screens/OrderScreen/OrderScreen.dart';
import 'package:barber_app/Screens/ProfessionScreen2/ProfessionScreen2.dart';
import 'package:barber_app/Screens/ProfileScreen2/ProfileScreen2.dart';
import 'package:barber_app/Screens/chatscreens/ChatProfile.dart';
import 'package:barber_app/Screens/price_range/price_range_screen.dart';
import 'package:barber_app/Screens/signup/signup_screen.dart';
import 'package:barber_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'Screens/ChatInboxScreen/ChatInbox.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: ScreenUtilInit(
        //TODO: Screen sizes to be changed according to the design provided
        designSize: Size(width, height),
        builder: (_, child) => SplashScreen(),
        // builder: (_, child) => ChatUi(),
        // builder: (_, child) => SignUp(),
        //builder: (_, child) => PriceRangeScreen(),
        //builder: (context, child) => OrderScreen(),
      ),
    );
  }
}

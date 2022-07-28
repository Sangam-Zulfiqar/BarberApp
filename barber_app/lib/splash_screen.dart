import 'dart:async';

import 'package:barber_app/Screens/SignIn/Log_In.dart';
import 'package:barber_app/Screens/VendorSelection/OpenScreen.dart';
import 'package:barber_app/screens/reset_pasword/reset_pasword_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Screens/signup/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Log_In(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: SvgPicture.asset(
          "assets/icons/Logo.svg",
        ),
      )),
    );
  }
}

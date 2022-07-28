import 'dart:ui';

import 'package:flutter/material.dart';

import '../Screens/create_account/create_account_screen.dart';

class SignUpButton extends StatelessWidget {
  final String title;
  final colorP;
  final onTap;
  SignUpButton({
    required this.title,
    required this.colorP,
    required this.onTap,
    //  required MaterialColor Color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        color: colorP,
        onPressed: onTap,
      ),
    );
  }
}

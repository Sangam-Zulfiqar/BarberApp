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
      width: 300,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(title),
        color: colorP, onPressed: onTap,
        // onPressed: () {
        //   Navigator.pushReplacement(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => CreateAccountScreen(),
      ),
    );
  }
}

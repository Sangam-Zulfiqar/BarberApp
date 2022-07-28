import 'package:flutter/material.dart';

import 'SignUpButton.dart';

class CustomTextFeild extends StatelessWidget {
  final hinttxt;
  final length;
  CustomTextFeild({required this.hinttxt, required this.length});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      height: 70,
      width: 300,
      child: TextField(
        maxLines: length,
        autocorrect: true,
        decoration: InputDecoration(
          hintText: hinttxt,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
      ),
    );
  }
}

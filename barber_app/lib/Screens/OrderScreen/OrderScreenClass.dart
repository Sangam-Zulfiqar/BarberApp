import 'package:flutter/material.dart';

class OrderScreenClass extends StatelessWidget {
  String myText;
  final myIcon;
  final icon;

  OrderScreenClass({
    required this.myText,
    this.myIcon,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 30,
        width: 170,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 5,
              ),
              child: InkWell(
                child: Text(
                  myText.toString(),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                child: myIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

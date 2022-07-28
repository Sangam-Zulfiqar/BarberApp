import 'package:flutter/material.dart';

class CustomExpLevelClass extends StatelessWidget {
  String myText;
  final myIcon;
  final icon;

  CustomExpLevelClass({
    required this.myText,
    this.myIcon,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: InkWell(
                child: Text(
                  myText.toString(),
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
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

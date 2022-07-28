import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerClass extends StatelessWidget {
  final title;
  final imgPath;

  ContainerClass({this.title, this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      padding: EdgeInsets.all(10),
      child: Container(
        // height: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imgPath,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

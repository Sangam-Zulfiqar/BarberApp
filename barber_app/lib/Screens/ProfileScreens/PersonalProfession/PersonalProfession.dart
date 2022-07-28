import 'package:flutter/material.dart';

import '../../../Widgets/Button.dart';

import '../../../Widgets/CustomTextFeild.dart';
import 'ImagePicker.dart';
import 'package:dotted_border/dotted_border.dart';

class PersonalProfession extends StatelessWidget {
  const PersonalProfession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 60, right: 50, top: 70),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "Personal Information",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFeild(
            length: 2,
            hinttxt: "Professional Name",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextFeild(
            length: 2,
            hinttxt: "Location",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextFeild(
            length: 80,
            hinttxt: "Discription",
          ),
          SizedBox(
            height: 30,
          ),
          DottedBorder(
            color: Colors.purple,
            strokeWidth: 2,
            dashPattern: [10, 6],
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.blueAccent)]),
              padding: EdgeInsets.all(70.0),
              child: AppImagePicker(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          NewButton(),
        ]),
      ),
    );
  }
}

import 'package:barber_app/Screens/SignIn/Log_In.dart';
import 'package:barber_app/Screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/custom_button.dart';

import '../../Widgets/custom_textfield1.dart';

class ResetPaswordScreen extends StatelessWidget {
  const ResetPaswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SignUp(),
              ),
            );
          },
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reset Pasword",
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Please enter your email address to',
              style: TextStyle(fontSize: 17.sp),
            ),
            SizedBox(height: 5.h),
            Text(
              'request a pasword reset',
              style: TextStyle(fontSize: 17.sp),
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomTextField1(
              textInputAction: TextInputAction.next,
              hinttext: 'abc@email.com',
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: Color(0xff999999),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomButton(
              onPressed: () {},
              title: 'SEND',
              Style: TextStyle(fontSize: 18.sp, color: Colors.white),
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}

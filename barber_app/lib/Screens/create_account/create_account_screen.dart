import 'package:barber_app/Screens/ChooseProfession/Choose_Profession.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/gestures.dart';

import '../../Widgets/bottom_button.dart';
import '../../Widgets/custom_button.dart';

import '../../Widgets/custom_textfield1.dart';
import '../signup/signup_screen.dart';
import 'create_account_provider.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateAccountProvider(),
      child: Scaffold(
        body: Consumer<CreateAccountProvider>(
          builder: (context, model, child) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 60.h, left: 20.w, right: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Account",
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextField1(
                      textInputAction: TextInputAction.next,
                      hinttext: 'Full name',
                      prefixIcon: const Icon(
                        Icons.person_add_outlined,
                        color: Color(0xff999999),
                      ),
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
                      height: 15.h,
                    ),
                    CustomTextField1(
                      textInputAction: TextInputAction.next,
                      hinttext: 'Yours Pasword',
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Color(0xff999999),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextField1(
                      textInputAction: TextInputAction.next,
                      hinttext: 'Confirm Your Pasword',
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Color(0xff999999),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: model.isValue,
                          onChanged: (value) {
                            model.isChecked = value ?? true;
                          },
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: ' I Agree to the ',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12.sp),
                            ),
                            TextSpan(
                              text: 'Term and Service ',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 12.sp),
                            ),
                            TextSpan(
                              text: '&',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            TextSpan(
                              text: 'Privacy and Policy',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 12.sp),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: CustomButton(
                        color: model.isValue == true
                            ? Colors.deepPurple
                            : Colors.black,
                        title: 'Create An Account',
                        Style: TextStyle(color: Colors.white, fontSize: 15.sp),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Choose_Profession()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            indent: 20.0,
                            endIndent: 10.0,
                            thickness: 1,
                            //    color: Colors.red,
                          ),
                        ),
                        Text('OR'),
                        Expanded(
                          child: Divider(
                            indent: 10.0,
                            endIndent: 20.0,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BottomButton(
                          SvgPicture: SvgPicture.asset(
                            "assets/icons/google.svg",
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        BottomButton(
                          SvgPicture: SvgPicture.asset(
                            "assets/icons/apple.svg",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Already have an account? ',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.sp),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Sign Up ',
                                  style: TextStyle(
                                      color: model.isValue == true
                                          ? Colors.deepPurple
                                          : Colors.black,
                                      fontSize: 15),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('button pressed');
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => SignUp()));
                                    }),
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

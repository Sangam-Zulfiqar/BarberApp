import 'package:barber_app/Screens/ChooseProfession/Choose_Profession.dart';
import 'package:barber_app/Screens/reset_pasword/reset_pasword_screen.dart';
import 'package:barber_app/screens/signup/signup_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../Widgets/bottom_button.dart';
import '../../Widgets/custom_button.dart';

import '../../Widgets/custom_textfield1.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupProvider(),
      child: Scaffold(
        body: Consumer<SignupProvider>(
          builder: (context, model, child) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Container(
                      child: SvgPicture.asset(
                        "assets/icons/Group.svg",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: Text(
                        'App Name ',
                        style: TextStyle(
                            fontSize: 30.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sign in ',
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15.sp,
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
                      height: 10.h,
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
                    Row(
                      children: [
                        Switch(
                          onChanged: model.toggleSwitch,
                          value: model.isSwitched,
                          activeColor: Colors.deepPurple,
                          inactiveThumbColor: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Remember me"),

                        //  Switch(value:, onChanged:),
                        SizedBox(
                          width: 100.w,
                        ),
                        GestureDetector(
                            onTap: (() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResetPaswordScreen(),
                                ),
                              );
                            }),
                            child: Text(
                              'Forget Pasword?',
                              style: TextStyle(color: Colors.deepPurple),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Choose_Profession(),
                          ),
                        );
                      },
                      color: Colors.deepPurple,
                      title: 'Sign In',
                      Style: TextStyle(fontSize: 18.sp, color: Colors.white),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Center(
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BottomButton(
                          SvgPicture: SvgPicture.asset(
                            "assets/icons/google.svg",
                          ),
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
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: ' Don\'t have account?',
                          style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                        ),
                        TextSpan(
                          text: 'Sign Up ',
                          style: TextStyle(
                              color: Colors.deepPurple, fontSize: 15.sp),
                        ),
                      ])),
                    )
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

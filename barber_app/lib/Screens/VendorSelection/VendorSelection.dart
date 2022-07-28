import 'package:barber_app/Screens/ExperienceLevel/ExpClass.dart';
import 'package:barber_app/Screens/GenderSelection/GenderSelection.dart';
import 'package:barber_app/Screens/signup/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

import '../../Widgets/SignUpButton.dart';
import '../create_account/create_account_screen.dart';
import 'VendorSelectionProvider.dart';

class VendorSelection extends StatefulWidget {
  @override
  _ProfessionState createState() => _ProfessionState();
}

class _ProfessionState extends State<VendorSelection> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) {
      return VendorSelectionProvider();
    }, child: SafeArea(child:
        Consumer<VendorSelectionProvider>(builder: (context, model, child) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 50.0, left: 50, top: 100),
          child: Column(
            children: [
              Text(
                "Join As A Vendor Or User",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  model.getValue(1);
                },
                child: Container(
                  height: 150,
                  child: CustomExpLevelClass(
                    myText: "I Am A Vendor",
                    // icon: Icons.next_plan,
                    myIcon: model.value == 1
                        ? Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          )
                        : SizedBox(),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  model.getValue(2);
                },
                child: Container(
                  height: 150,
                  child: CustomExpLevelClass(
                    myText: "I Am A User",
                    myIcon: model.value == 2
                        ? Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          )
                        : SizedBox(),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              SignUpButton(
                title: "Create Account",
                colorP: Colors.purple,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateAccountScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
              RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Sign up',
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ));
                            }),
                    ]),
              ),
            ],
          ),
        ),
      );
    })));
  }
}

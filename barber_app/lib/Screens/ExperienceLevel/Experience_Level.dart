import 'package:barber_app/Screens/ChooseServices/ChooseServices.dart';
import 'package:barber_app/Screens/ExperienceLevel/ExpClass.dart';
import 'package:barber_app/Screens/GenderSelection/GenderSelection.dart';
import 'package:barber_app/Widgets/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

import 'ExperienceLevelProvider.dart';

class ExperienceLevel extends StatefulWidget {
  @override
  _ProfessionState createState() => _ProfessionState();
}

class _ProfessionState extends State<ExperienceLevel> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ExperienceLevelProvider();
      },
      child: SafeArea(
        child:
            Consumer<ExperienceLevelProvider>(builder: (context, model, child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 100.h),
                      child: Center(
                          child: Text(
                        'Your Experience Level',
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),

                    ///Custom Container Called.....................................
                    InkWell(
                        onTap: () {
                          model.getValue(0);
                        },
                        child: CustomExpLevelClass(
                            myText: "SuperStar",
                            myIcon: model.value == 0
                                ? Icon(Icons.check_circle,
                                    color: Color(0xFF866EE1))
                                : SizedBox())),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                        onTap: () {
                          model.getValue(1);
                        },
                        child: CustomExpLevelClass(
                            myText: "AllStar",
                            myIcon: model.value == 1
                                ? Icon(Icons.check_circle,
                                    color: Color(0xFF866EE1))
                                : SizedBox())),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                        onTap: () {
                          model.getValue(2);
                        },
                        child: CustomExpLevelClass(
                            myText: "Veteran",
                            myIcon: model.value == 2
                                ? Icon(Icons.check_circle,
                                    color: Color(0xFF866EE1))
                                : SizedBox())),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      onTap: () {
                        model.getValue(3);
                      },
                      child: CustomExpLevelClass(
                        myText: "Rookie Sensation",
                        myIcon: model.value == 3
                            ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                            : SizedBox(),
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 80),
                        child: NewButton(
                          ontap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChooseServices()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

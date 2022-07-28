import 'package:barber_app/Screens/ExperienceLevel/ExpClass.dart';
import 'package:barber_app/Screens/GenderSelection/GenderSelection.dart';
import 'package:barber_app/Screens/price_range/price_range_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

import '../../Widgets/Button.dart';
import '../ExperienceLevel/ExperienceLevelProvider.dart';

class ChooseServices extends StatefulWidget {
  @override
  _ProfessionState createState() => _ProfessionState();
}

class _ProfessionState extends State<ChooseServices> {
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
                        'Choose Services',
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),

                    ///Custom Container Called.....................................
                    InkWell(
                        onTap: () {
                          model.getValue(0);
                        },
                        child: CustomExpLevelClass(
                            myText: "Do You Provide Services For Womens",
                            myIcon: model.value == 0
                                ? Icon(Icons.check_circle,
                                    color: Color(0xFF866EE1))
                                : SizedBox())),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                        onTap: () {
                          model.getValue(1);
                        },
                        child: CustomExpLevelClass(
                            myText: "Do You Provide Services For Child",
                            myIcon: model.value == 1
                                ? Icon(Icons.check_circle,
                                    color: Color(0xFF866EE1))
                                : SizedBox())),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                        onTap: () {
                          model.getValue(2);
                        },
                        child: CustomExpLevelClass(
                            myText: "Does Your Facility Accomudate Handicap ",
                            myIcon: model.value == 2
                                ? Icon(Icons.check_circle,
                                    color: Color(0xFF866EE1))
                                : SizedBox())),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        model.getValue(3);
                      },
                      child: CustomExpLevelClass(
                        myText: "Do You Provide In Home Mobile Services",
                        myIcon: model.value == 3
                            ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                            : SizedBox(),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        model.getValue(4);
                      },
                      child: CustomExpLevelClass(
                        myText: "Price Range For Your Services",
                        myIcon: model.value == 4
                            ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                            : SizedBox(),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        model.getValue(5);
                      },
                      child: CustomExpLevelClass(
                        myText: "Do You Have Discount Services",
                        myIcon: model.value == 5
                            ? Icon(Icons.check_circle, color: Color(0xFF866EE1))
                            : SizedBox(),
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: NewButton(
                          ontap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PriceRangeScreen()),
                            );
                          },
                        ),
                      ),
                    )
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

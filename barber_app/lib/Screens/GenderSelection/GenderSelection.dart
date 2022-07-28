import 'package:barber_app/Screens/ExperienceLevel/ExpClass.dart';
import 'package:barber_app/Screens/GenderSelection/GenderSelection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

import '../../Widgets/Button.dart';
import 'GenderSelectionProvider.dart';

class GenderSelection extends StatefulWidget {
  @override
  _ProfessionState createState() => _ProfessionState();
}

class _ProfessionState extends State<GenderSelection> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return GenderSelectionProvider();
      },
      child: SafeArea(
        child:
            Consumer<GenderSelectionProvider>(builder: (context, model, child) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 100.h),
                    child: Center(
                        child: Text(
                      'Are You',
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  InkWell(
                      onTap: () {
                        model.getValue(0);
                      },
                      child: CustomExpLevelClass(
                          myText: "Man",
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
                          myText: "Women",
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
                      myText: "Child",
                      myIcon: model.value == 2
                          ? Icon(
                              Icons.check_circle,
                              color: Color(0xFF866EE1),
                            )
                          : SizedBox(),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 200.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GenderSelection()),
                        );
                      },
                      child: NewButton(),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

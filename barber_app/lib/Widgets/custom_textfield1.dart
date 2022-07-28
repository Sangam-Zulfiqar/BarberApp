import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField1 extends StatelessWidget {
  final hinttext;
  final prefixIcon;
  final sufFixIcon;
  final textInputAction;
  final keyBoardType;
  final maxLine;
  CustomTextField1({
    this.hinttext,
    this.prefixIcon,
    this.sufFixIcon,
    this.keyBoardType,
    this.textInputAction,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: TextFormField(
        textInputAction: textInputAction,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.sp)),
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 15.w),
          hintText: hinttext,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff999999), width: 1.0.w),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff999999), width: 1.0.w),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          prefixIcon: prefixIcon,
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff999999), width: 1.0.w),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}

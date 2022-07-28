import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomButton extends StatelessWidget {
  final SvgPicture;
 BottomButton({this.SvgPicture
    
  }) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       
        
      },
      child: Container(padding: EdgeInsets.only(top: 5,bottom: 5,right: 20,left: 20),
      decoration: BoxDecoration(border:Border.all(color: Colors.grey,
        width: 1.w),borderRadius: BorderRadius.circular(10.sp) ),
         child: SvgPicture,
      ),
    );
  }
}
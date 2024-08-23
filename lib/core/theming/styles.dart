import 'package:doc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
  );
  static TextStyle font32BlueBold = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
    fontSize: 32.sp,
  );
  static TextStyle font13GreyRegular = TextStyle(
    color: ColorsManager.grey,
    fontWeight: FontWeight.normal,
    fontSize: 10.sp,

    
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );

}

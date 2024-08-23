import 'package:doc/core/theming/colors.dart';
import 'package:doc/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
    fontSize: 24.sp,
  );
  static TextStyle font32BlueBold = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeightHelper.bold,
    fontSize: 32.sp,
  );

  static TextStyle font24BlueBold = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeightHelper.bold,
    fontSize: 24.sp,
  );
  static TextStyle font14greyRegular = TextStyle(
    color: ColorsManager.grey,  
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
  );
  static TextStyle font13GreyRegular = TextStyle(
    color: ColorsManager.grey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 10.sp,
  );

  static TextStyle font16WhiteMedium = TextStyle(
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
    fontSize: 16.sp,
  );

  static TextStyle font14LightGreyRegular = TextStyle(
    color: ColorsManager.lightGrey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 14.sp,
  );
  static TextStyle font13BlueRegular = TextStyle(
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 16.sp,
  );
   static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.mainBlue,
  );
   static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grey,
  );
   static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );
}

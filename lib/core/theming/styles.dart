import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';
import 'font_weight_manager.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32color247CFFBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.color247CFF,
  );

  static TextStyle font24color247CFFBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.color247CFF,
  );

  static TextStyle font14color757575Regular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.color757575,
  );

  static TextStyle font14colorC2C2C2Medium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.colorC2C2C2,
  );

  static TextStyle font14color242424Medium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.color242424,
  );

  static TextStyle font13color242424Regular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.color242424,
  );


  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.color757575,
  );

  static TextStyle font13color247CFFRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.color247CFF,
  );

  static TextStyle font13color9E9E9ERegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.color9E9E9E,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
}

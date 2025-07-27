import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.label});

  final void Function() onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(vertical: 14.h),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: ColorsManager.color247CFF,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyles.font16WhiteSemiBold,
        ),
      ),
    );
  }
}

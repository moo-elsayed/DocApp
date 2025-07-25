import 'package:flutter/material.dart';
import 'package:flutter_project/core/helpers/extentions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class OnboardingBottomTextAndButton extends StatelessWidget {
  const OnboardingBottomTextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            textAlign: TextAlign.center,
            style: TextStyles.font13GrayRegular,
          ),
          Gap(32.h),
          GestureDetector(
            onTap: () => context.pushNamed(Routes.loginView),
            child: Container(
              padding: EdgeInsetsGeometry.symmetric(vertical: 14.h),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: ColorsManager.color247CFF,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Text(
                'Get Started',
                textAlign: TextAlign.center,
                style: TextStyles.font16WhiteSemiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

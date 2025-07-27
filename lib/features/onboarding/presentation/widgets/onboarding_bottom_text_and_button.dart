import 'package:flutter/material.dart';
import 'package:flutter_project/core/helpers/extentions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_button.dart';

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
          CustomButton(onTap: () => context.pushNamed(Routes.loginView),label: 'Get Started',),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'onboarding_app_bar.dart';
import 'onboarding_bottom_text_and_button.dart';
import 'onboarding_doctor_image.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 22.h),
      child: Column(
        children: [
          const OnboardingAppBar(),
          Gap(40.h),
          const OnboardingDoctorImage(),
          Gap(12.h),
          const OnboardingBottomTextAndButton(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13color9E9E9ERegular,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font13color242424Regular,
          ),
          TextSpan(text: ' and', style: TextStyles.font13color9E9E9ERegular),
          TextSpan(
            text: ' PrivacyPolicy.',
            style: TextStyles.font13color242424Regular.copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}

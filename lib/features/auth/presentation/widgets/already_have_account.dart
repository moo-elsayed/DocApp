import 'package:flutter/material.dart';
import 'package:flutter_project/core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet?',
            style: TextStyles.font13color242424Regular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13color247CFFRegular,
          ),
        ],
      ),
    );
  }
}

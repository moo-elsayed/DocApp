import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/core/theming/colors.dart';
import 'package:flutter_project/core/theming/styles.dart';
import 'package:flutter_project/core/widgets/custom_button.dart';
import 'package:flutter_project/core/widgets/custom_text_form_field.dart';
import 'package:flutter_project/features/auth/presentation/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/theming/font_weight_manager.dart';
import 'already_have_account.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _visibility = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(50.h),
              Text('Welcome Back', style: TextStyles.font24color247CFFBold),
              Gap(8.h),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font14color757575Regular,
              ),
              Gap(36.h),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: _emailController,
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Gap(16.h),
                    CustomTextFormField(
                      controller: _passwordController,
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _visibility = !_visibility;
                          setState(() {});
                        },
                        child: Icon(
                          _visibility
                              ? CupertinoIcons.eye_slash
                              : CupertinoIcons.eye,
                          size: 24,
                        ),
                      ),
                      isObscureText: _visibility,
                    ),
                    Gap(16.h),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font13color247CFFRegular,
                      ),
                    ),
                    Gap(32.h),
                    CustomButton(onTap: () {}, label: 'Login'),
                    Gap(32.h),
                    const TermsAndConditionsText(),
                    Gap(24.h),
                    const AlreadyHaveAccount(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/core/theming/colors.dart';
import 'package:flutter_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.keyboardType,
    this.validator,
    this.maxLength,
    this.inputFormatters,
    this.contentPadding,
    this.isObscureText,
  });

  final TextEditingController controller;
  final Widget? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsetsGeometry? contentPadding;
  final bool? isObscureText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      inputFormatters: widget.inputFormatters,
      maxLength: widget.maxLength,
      obscureText: widget.isObscureText ?? false,
      keyboardType: widget.keyboardType,
      style: TextStyles.font14color242424Medium,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            widget.contentPadding ??
            EdgeInsetsGeometry.symmetric(vertical: 17.h, horizontal: 20.w),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        hintText: widget.hintText,
        hintStyle: TextStyles.font14colorC2C2C2Medium,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(ColorsManager.color247CFF),
        filled: true,
        fillColor: ColorsManager.colorFDFDFF,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? ColorsManager.colorEDEDED,
        width: 1.3,
      ),
    );
  }
}

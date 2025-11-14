import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final String? labelText;
  final TextStyle? labelStyle;
  final BorderRadius? borderRadius;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.labelText,
    this.prefixIcon,
    this.borderRadius, this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        errorMaxLines: 5,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),

        labelText: labelText,
        labelStyle: labelStyle,
        floatingLabelBehavior: FloatingLabelBehavior.always,

        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.borderTextFormColor.withOpacity(0.5),
                width: 1.3.w,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(0),
            ),

        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.borderTextFormColor.withOpacity(0.5),
                width: 1.3.w,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(0),
            ),

        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: borderRadius ?? BorderRadius.circular(0),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: borderRadius ?? BorderRadius.circular(0),
        ),

        hintStyle: hintStyle ?? AppTextStyles.regular13,
        hintText: hintText,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.textFormColor,
        prefixIcon: prefixIcon,
        prefixIconColor: Colors.blueAccent,
        fillColor: backgroundColor ?? AppColors.backgroundTextFormColor,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? AppTextStyles.regular13.copyWith(fontSize: 14.sp),
      validator: (value) {
        return validator(value);
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}

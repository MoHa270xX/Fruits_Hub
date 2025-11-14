import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/app_text_form_feild.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({super.key, required this.hintText, this.iconData});
  final String hintText;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(

      suffixIcon: iconData != null ? Icon(iconData) : null,
      borderRadius: BorderRadius.circular(6.r),
      contentPadding: EdgeInsets.only(top: 16.h, right: 20.w, bottom: 16.h),
      hintText: hintText,
      hintStyle: AppTextStyles.regular13.copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.textFormColor,
      ),
      validator: (value) {},
    );
  }
}
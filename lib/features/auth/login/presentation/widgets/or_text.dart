import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_strings.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OrText extends StatelessWidget {
  const OrText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.textFormColor.withOpacity(.8),
            thickness: .6.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            AppStrings.orSeparator,
            style: AppTextStyles.semiBold16.copyWith(color: Colors.black),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.textFormColor.withOpacity(.8),
            thickness: .6.h,
          ),
        ),
      ],
    );
  }
}
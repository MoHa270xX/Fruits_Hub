import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_strings.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({super.key, this.onTap});
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            AppStrings.forgotPassword,
            style: AppTextStyles.regular13.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.lightPrimaryColor,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
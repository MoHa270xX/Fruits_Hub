import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_strings.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ForgotPasswordInstructions extends StatelessWidget {
  const ForgotPasswordInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.forgotPasswordInstructions,
      style:AppTextStyles.regular16.copyWith(
        color: AppColors.lightGrayColor,
      fontWeight: FontWeight.w600
      ),
    );
  }
}
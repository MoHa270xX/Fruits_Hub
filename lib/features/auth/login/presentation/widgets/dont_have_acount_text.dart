import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class DontOrHaveAccount extends StatelessWidget {
  const DontOrHaveAccount({super.key, required this.text1, required this.text2, this.onTap});
final String text1;
final String text2;
final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.textFormColor,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
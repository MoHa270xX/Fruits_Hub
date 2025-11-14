import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/app_text_button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.backgroundColor, required this.buttonText, required this.borderColor, this.iconData, required this.textColor, this.image, });
  final void Function() onPressed;
  final Color backgroundColor;
  final IconData? iconData;
  final String buttonText;
  final Color textColor;
  final Color? borderColor;
  final String ?image ;

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      borderColor: borderColor,
      buttonText: buttonText,
      textStyle: AppTextStyles.bold16.copyWith(color: textColor),
      onPressed: onPressed,
      borderRadius: 16.r,
      backgroundColor: backgroundColor,
      imagePath: image,
      

    );
  }
}

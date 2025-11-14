import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helpers/spacing.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.iconData,
    required this.onPressed,
  });
  final String title;
  final IconData iconData;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(iconData)),
        horizontalSpace(85.w),
        Text(title, style: AppTextStyles.bold19),
      ],
    );
  }
}
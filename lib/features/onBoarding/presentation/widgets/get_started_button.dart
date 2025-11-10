import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_strings.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/app_text_button.dart';

class GetStartedButton extends StatelessWidget {
 const GetStartedButton({super.key, required this.currentPage, required this.onPressed});
  final int currentPage;
   final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return  Visibility(
          visible: currentPage==1?true:false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppTextButton(
            
              buttonText:AppStrings.getStartedButton ,
              textStyle: AppTextStyles.bold16.copyWith(color: Colors.white),
              onPressed: onPressed ,
              borderRadius: 16.r,
              
            ),
          ),
        );
  }
}
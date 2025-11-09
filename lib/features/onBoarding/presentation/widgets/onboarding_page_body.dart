import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helpers/spacing.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/app_text_button.dart';
import 'package:fruits_hub/features/onBoarding/presentation/widgets/on_boarding_page_view.dart';

class OnboardingPageBody extends StatelessWidget {
  const OnboardingPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(dotsCount: 2,decorator: DotsDecorator(
          activeColor: AppColors.primaryColor,
          color: AppColors.primaryColor.withOpacity(.5),
        ),),
        verticalSpace(30),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: AppTextButton(buttonText: "ابدا الان ", textStyle: TextStyle(color: Colors.white), onPressed:(){},borderRadius: 16,),
        ),
        verticalSpace(42),
      ],
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/app_router/app_router.dart';
import 'package:fruits_hub/core/helpers/spacing.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_strings.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_feild.dart';
import 'package:fruits_hub/features/auth/login/presentation/widgets/dont_have_acount_text.dart';
import 'package:go_router/go_router.dart';

class SignupPageBody extends StatelessWidget {
  const SignupPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              verticalSpace(12.h),
              CustomAppBar(title: AppStrings.newAccountTitle, iconData: Icons.arrow_back, onPressed: () {}),
              verticalSpace(24.h),
              CustomTextFormFeild(hintText: AppStrings.fullNameHint),
              verticalSpace(16.h),
              CustomTextFormFeild(hintText: AppStrings.emailHint),
              verticalSpace(16.h),
              CustomTextFormFeild(
                hintText: AppStrings.passwordHint,
                iconData: Icons.visibility,
              ),
              verticalSpace(16.h),
             // const PrivacyText(),
              verticalSpace(30.h),
              CustomButton(onPressed: (){}, backgroundColor: AppColors.primaryColor, buttonText: AppStrings.createAccountButton, textColor: Colors.white, borderColor: AppColors.primaryColor),
              verticalSpace(26.h),
              DontOrHaveAccount(text1: AppStrings.haveAccountPrompt, text2: AppStrings.loginLink,onTap: () {
                context.goNamed(Routes.loginPageName);
              },),
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
class PrivacyText extends StatelessWidget {
  const PrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.termsAndConditionsPrefix,
          style:AppTextStyles.regular13.copyWith(
            color: AppColors.textFormColor.withOpacity(.5),
            fontWeight: FontWeight.w600
            
          ),
        ),
        GestureDetector(
          onTap: () {
           
          },
          child: Text(
            AppStrings.termsAndConditionsLink,
            style: AppTextStyles.regular13.copyWith(
              color: AppColors.lightPrimaryColor,
              fontWeight: FontWeight.w600
              
             
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helpers/spacing.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_strings.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_feild.dart';
import 'package:fruits_hub/features/auth/forget_password/presentation/widgets/forget_password_instructions.dart';

class ForgetPasswordPageBody extends StatelessWidget {
  const ForgetPasswordPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              verticalSpace(12.h),
              CustomAppBar(title: AppStrings.forgotPasswordTitle, iconData: Icons.arrow_back, onPressed: (){}),
              verticalSpace(24.h),
              ForgotPasswordInstructions(),
              verticalSpace(30.h),
              CustomTextFormFeild(hintText:   AppStrings.emailHint),
              verticalSpace(42.h),
              CustomButton(onPressed: (){}, backgroundColor: AppColors.primaryColor, buttonText: AppStrings.resetPasswordButton, borderColor: AppColors.primaryColor, textColor: Colors.white)
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}

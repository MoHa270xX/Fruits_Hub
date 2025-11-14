import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/app_router/app_router.dart';
import 'package:fruits_hub/core/helpers/spacing.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_strings.dart';
import 'package:fruits_hub/core/utils/assets.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_feild.dart';
import 'package:fruits_hub/features/auth/login/presentation/widgets/dont_have_acount_text.dart';
import 'package:fruits_hub/features/auth/login/presentation/widgets/forget_password.dart';
import 'package:fruits_hub/features/auth/login/presentation/widgets/or_text.dart';
import 'package:go_router/go_router.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: AppStrings.loginTitle,
                iconData: Icons.arrow_back,
                onPressed: () {},
              ),
              verticalSpace(24.h),
              CustomTextFormFeild(hintText: AppStrings.emailHint),
              verticalSpace(16.h),
              CustomTextFormFeild(
                hintText: AppStrings.passwordHint,
                iconData: Icons.visibility,
              ),
              verticalSpace(16.h),
               ForgetPasswordText(onTap: (){
                context.goNamed(Routes.forgetPasswordPageName);
               }),
              verticalSpace(33.h),
              CustomButton(onPressed: () {}, backgroundColor: AppColors.primaryColor, buttonText: AppStrings.loginButton, borderColor: AppColors.primaryColor, textColor: Colors.white),
              verticalSpace(33.h),
              DontOrHaveAccount(text1: AppStrings.noAccountPrompt, text2: AppStrings.createAccountLink,onTap: () {
                context.goNamed(Routes.signupPageName);
              },),
              verticalSpace(33.h),
              OrText(),
              verticalSpace(21),
              SizedBox(
                width: double.infinity,
                height: 54.h,
                child: CustomButton(onPressed: () {}, backgroundColor:Colors.white, buttonText: AppStrings.loginWithGoogle, borderColor:AppColors.textFormColor.withOpacity(.8), textColor: Colors.black ,image: Assets.imagesGoogleIcon,)),
              verticalSpace(16.h),
                        CustomButton(onPressed: () {}, backgroundColor:Colors.white, buttonText: AppStrings.loginWithFacebook, borderColor:AppColors.textFormColor.withOpacity(.8), textColor: Colors.black, image: Assets.imagesFacebookIcon,),
          
              verticalSpace(16.h),
                        CustomButton(onPressed: () {}, backgroundColor:Colors.white, buttonText: AppStrings.loginWithApple, borderColor:AppColors.textFormColor.withOpacity(.8), textColor: Colors.black, image: Assets.imagesAppleIcon,),
          
            ],
          ),
        ),
      ),
    );
  }
}












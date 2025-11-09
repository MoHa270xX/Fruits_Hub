import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_strings.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/assets.dart';
import 'package:fruits_hub/features/onBoarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:pageController ,
      children: [
        PageViewItem(
          isVisable: true,
          image: Assets.imagesFruitbasket, backgroundImage: Assets.imagesPageViewItemBackgroundImage,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppStrings.welcomeTitle,style: AppTextStyles.bold23),
            Text(AppStrings.welcomeTitle2,style: AppTextStyles.bold23.copyWith(color: AppColors.secondaryColor),),
            Text(AppStrings.welcomeTitle1,style: AppTextStyles.bold23.copyWith(color: AppColors.lightPrimaryColor),),
          ],
        ), subtitle:AppStrings.welcomeBody,),

        PageViewItem(
          isVisable: false,
          image: Assets.imagesPineapple, backgroundImage: Assets.imagesPageViewItemBackgroundImage2,
        title: Text(AppStrings.searchAndShopTitle,style: AppTextStyles.bold23,), subtitle:AppStrings.searchAndShopBody

    ),
    ],
    );
  }
}
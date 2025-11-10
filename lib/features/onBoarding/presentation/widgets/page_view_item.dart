import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/app_router/app_router.dart';
import 'package:fruits_hub/core/helpers/spacing.dart';
import 'package:fruits_hub/core/services/shared_pref.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_strings.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg_flutter.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subtitle,
    required this.isVisable,
  });
  final String image;
  final String backgroundImage;
  final Widget title;
  final String subtitle;
  final bool isVisable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Visibility(visible: isVisable, child: GestureDetector(
                  onTap: () {
                    
                     Prefs.setBool(kIsOnBoradingViewSeen,true);
                     context.goNamed(Routes.loginPageName);
                  },
                  
                  child: Text(AppStrings.skip,style: AppTextStyles.regular13.copyWith(color: AppColors.grayColor),))),
              ),
            ],
          ),
        ),
        verticalSpace(64),
        title,
        verticalSpace(24),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(subtitle,style:AppTextStyles.semiBold13.copyWith(color:AppColors.grayColor, ) , textAlign: TextAlign.center),
        ),
      ],
    );
  }
}

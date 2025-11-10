import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helpers/spacing.dart';
import 'package:fruits_hub/core/services/shared_pref.dart';
import 'package:fruits_hub/core/utils/constants.dart';
import 'package:fruits_hub/features/onBoarding/presentation/widgets/dots_indicator.dart';
import 'package:fruits_hub/features/onBoarding/presentation/widgets/get_started_button.dart';
import 'package:fruits_hub/features/onBoarding/presentation/widgets/on_boarding_page_view.dart';

class OnboardingPageBody extends StatefulWidget {
  const OnboardingPageBody({super.key});

  @override
  State<OnboardingPageBody> createState() => _OnboardingPageBodyState();
}

class _OnboardingPageBodyState extends State<OnboardingPageBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {
        
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController,)),
       DotsIndicatorWidget(currentPage: currentPage,),
        verticalSpace(30),
       GetStartedButton(currentPage: currentPage,onPressed: () {
         Prefs.setBool(kIsOnBoradingViewSeen,true);
       },),
        verticalSpace(42),
      ],
    );
  }
}

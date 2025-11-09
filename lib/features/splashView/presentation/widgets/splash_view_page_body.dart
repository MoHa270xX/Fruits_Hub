import 'package:flutter/widgets.dart';
import 'package:fruits_hub/core/app_router/app_router.dart';
import 'package:fruits_hub/core/utils/assets.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewPageBody extends StatefulWidget {
  const SplashViewPageBody({super.key});

  @override
  State<SplashViewPageBody> createState() => _SplashViewPageBodyState();
  
}

class _SplashViewPageBodyState extends State<SplashViewPageBody> {
  @override
  void initState() {
   
    super.initState();
     excuteNavigation();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
    
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesSplashLogo),
        SvgPicture.asset(Assets.imagesSplashButtom,fit: BoxFit.fill,),

      ],
    );
  }
  
 void excuteNavigation() {
  Future.delayed(const Duration(seconds: 3), () {
    if (mounted) {
      context.goNamed(Routes.onboardingName);
    }
  });
}
}
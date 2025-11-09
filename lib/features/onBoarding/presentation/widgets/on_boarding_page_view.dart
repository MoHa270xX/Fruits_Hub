import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/assets.dart';
import 'package:fruits_hub/features/onBoarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(image: Assets.imagesFruitbasket, backgroundImage: Assets.imagesPageViewItemBackgroundImage,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("مرحبًا بك في "),
            Text( "HUB"),
            Text("Fruit"),
          ],
        ), subtitle: 'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',),
        
        PageViewItem(image: Assets.imagesPineapple, backgroundImage: Assets.imagesPageViewItemBackgroundImage2,
        title: Text("ابحث وتسوق"), subtitle: 'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية'   )

      ],
    );
  }
}
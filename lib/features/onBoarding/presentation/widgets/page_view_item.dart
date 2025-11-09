import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helpers/spacing.dart';
import 'package:svg_flutter/svg_flutter.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, required this.backgroundImage, required this.title, required this.subtitle});
  final String image;
  final String backgroundImage;
  final Widget title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*.5,
          child: Stack(
            children: [
              Positioned.fill(child: SvgPicture.asset(backgroundImage,fit: BoxFit.fill)),
             Positioned(
              bottom: 0,
              left: 0,
              right: 0,
                child: SvgPicture.asset(image)),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("تخط"),
                ),
            ],
          ),
          
        ),
        verticalSpace(64),
        title,
         verticalSpace(24),
        Text(subtitle,textAlign: TextAlign.center,),
      ],
    );
  }
}
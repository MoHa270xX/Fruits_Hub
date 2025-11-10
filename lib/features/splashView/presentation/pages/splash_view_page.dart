import 'package:flutter/material.dart';
import 'package:fruits_hub/features/splashView/presentation/widgets/splash_view_page_body.dart';

class SplashViewPage extends StatelessWidget {
  const SplashViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: const SplashViewPageBody()),
    );
  }
}

import 'package:fruits_hub/features/auth/presentation/pages/login_page.dart';
import 'package:fruits_hub/features/onBoarding/presentation/pages/onboarding_page.dart';
import 'package:fruits_hub/features/splashView/presentation/pages/splash_view_page.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashPath = '/splashView';
  static const String splashName = 'splashView';
  static const String onboardingPath = '/onboarding';
  static const String onboardingName = 'onboarding';
  static const String loginPageName = 'loginPage';
  static const String loginPagePath = '/loginPage';
 
}

/// ====== Main App Router ======
class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.splashPath,
    routes: [
      
      GoRoute(
        path: Routes.splashPath, 
        name: Routes.splashName, 
         builder: (context, state) => const SplashViewPage(),
      ),
      GoRoute(
        path: Routes.onboardingPath, 
        name: Routes.onboardingName, 
         builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: Routes.loginPagePath, 
        name: Routes.loginPageName, 
         builder: (context, state) => const LoginPage(),
      ),

    
    ],
  );
}

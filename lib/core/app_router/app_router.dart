
import 'package:fruits_hub/features/splashView/presentation/pages/splash_view_page.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashPath = '/splashView';
  static const String splashName = 'splashView';
 
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

    
    ],
  );
}

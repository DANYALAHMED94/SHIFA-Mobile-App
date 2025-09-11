
import 'package:go_router/go_router.dart';
import 'package:shifa_mobile_app/features/splash/presentation/screens/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      name: AppRouteNames.splash,
      builder: (context, state) {
        return SplashScreen();
      },
    ),

  ],
);

class AppRouteNames {
  static const String splash = "Splash";
  static const String onboarding = "onboarding_screen";

}

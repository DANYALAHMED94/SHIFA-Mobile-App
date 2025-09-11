import 'package:go_router/go_router.dart';
import 'package:shifa_mobile_app/features/onboarding/presentation/screens/onboarding.dart';
import 'package:shifa_mobile_app/features/onboarding/presentation/screens/onboarding_screen_two.dart';
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
    GoRoute(
      path: "/onboarding_screen",
      name: AppRouteNames.onboarding,
      builder: (context, state) {
        return OnboardingScreen();
      },
    ),
        GoRoute(
      path: "/onboarding_screen_two",
      name: AppRouteNames.onboardingTwo,
      builder: (context, state) {
        return OnboardingScreenTwo();
      },
    ),
  ],
);

class AppRouteNames {
  static const String splash = "Splash";
  static const String onboarding = "onboarding_screen";
  static const String onboardingTwo = "onboarding_screen_two";
  
}

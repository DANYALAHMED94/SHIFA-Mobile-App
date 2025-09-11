import 'package:shifa_mobile_app/core/exports.dart';



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
            GoRoute(
      path: "/social_login_screen",
      name: AppRouteNames.socialLoginScreen,
      builder: (context, state) {
        return SocialLoginScreen();
      },
    ),
  ],
);

class AppRouteNames {
  static const String splash = "Splash";
  static const String onboarding = "onboarding_screen";
  static const String onboardingTwo = "onboarding_screen_two";
  static const String socialLoginScreen = "social_login_screen";
  
  
}

import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/roles/doctor/features/authentication/presentation/screens/login_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/authentication/presentation/screens/profile_setup_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/authentication/presentation/screens/sign_up_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/bottom_nav/presentation/screens/doctor_nav_bar_screen.dart';

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
    GoRoute(
      path: "/login_screen",
      name: AppRouteNames.loginScreen,
      builder: (context, state) {
        return LoginScreen();
      },
    ),
    GoRoute(
      path: "/signUp_screen",
      name: AppRouteNames.signUpScreen,
      builder: (context, state) {
        return SignUpScreen();
      },
    ),
    GoRoute(
      path: "/profile_setup_screen",
      name: AppRouteNames.profileSetupScreen,
      builder: (context, state) {
        return ProfileSetupScreen();
      },
    ),
        GoRoute(
      path: "/doctor_nav_bar_screen",
      name: AppRouteNames.doctorNavbarScreen,
      builder: (context, state) {
        return DoctorNavBarScreen();
      },
    ),
  ],
);

class AppRouteNames {
  static const String splash = "Splash";
  static const String onboarding = "onboarding_screen";
  static const String onboardingTwo = "onboarding_screen_two";
  static const String socialLoginScreen = "social_login_screen";
  static const String loginScreen = "login_screen";
  static const String signUpScreen = "signUp_screen";
  static const String profileSetupScreen = "profile_setup_screen";
  static const String doctorNavbarScreen = "doctor_nav_bar_screen";
}

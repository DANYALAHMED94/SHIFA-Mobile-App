import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/roles/doctor/features/availability/presentation/screens/override_period_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/doctor_nav_bar_screen",
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
    GoRoute(
      path: "/all_appointments_screen",
      name: AppRouteNames.allAppointmentsScreen,
      builder: (context, state) {
        return AllAppointmentsScreen();
      },
    ),
    GoRoute(
      path: "/appointment_detail_screen",
      name: AppRouteNames.appointmentDetail,
      builder: (context, state) {
        return AppointmentDetailScreen();
      },
    ),
        GoRoute(
      path: "/set_availability_screen",
      name: AppRouteNames.setAvailabilityScreen,
      builder: (context, state) {
        return SetAvailabilityScreen();
      },
    ),

        GoRoute(
      path: "/recurring_screen",
      name: AppRouteNames.recurringScreen,
      builder: (context, state) {
        return RecurringScreen();
      },
    ),
            GoRoute(
      path: "/override_period_screen",
      name: AppRouteNames.overridePeriod,
      builder: (context, state) {
        return OverridePeriodScreen();
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
  static const String allAppointmentsScreen = "all_appointments_screen";
  static const String appointmentDetail = "appointment_detail_screen";
  static const String appointmentRequestScreen = "appointment_request_screen";
  static const String setAvailabilityScreen = "set_availability_screen";
  static const String recurringScreen = "recurring_screen";
  static const String overridePeriod = "override_period_screen";
}

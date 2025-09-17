import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/roles/doctor/features/appointments/presentation/screens/doc_patient_appointment_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/assistants/presentation/screens/assistant_profile_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/assistants/presentation/screens/assistant_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/availability/presentation/screens/add_availability_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/availability/presentation/screens/add_slot_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/availability/presentation/screens/override_period_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/patient/presentation/screens/all_patients_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/patient/presentation/screens/doctor_patient_profile.dart';

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
    GoRoute(
      path: "/add_slot_screen",
      name: AppRouteNames.addSlotScreen,
      builder: (context, state) {
        return AddSlotScreen();
      },
    ),
    GoRoute(
      path: "/all_patients_screen",
      name: AppRouteNames.allPaientScreen,
      builder: (context, state) {
        return AllPatientsScreen();
      },
    ),
    GoRoute(
      path: "/doctor_patient_profile_screen",
      name: AppRouteNames.doctorPatientProfileScreen,
      builder: (context, state) {
        return DoctorPatientProfile();
      },
    ),
    GoRoute(
      path: "/doc_patient_appointment_screen",
      name: AppRouteNames.docPatientAppointmentScreen,
      builder: (context, state) {
        return DocPatientAppointmentScreen();
      },
    ),
    GoRoute(
      path: "/assistant_screen",
      name: AppRouteNames.assistantScreen,
      builder: (context, state) {
        return AssistantScreen();
      },
    ),
    GoRoute(
      path: "/assistant_profile_screen",
      name: AppRouteNames.assistantProfileScreen,
      builder: (context, state) {
        return AssistantProfileScreen();
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
  static const String addSlotScreen = "add_slot_screen";
  static const String allPaientScreen = "all_patients_screen";
  static const String doctorPatientProfileScreen =
      "doctor_patient_profile_screen";
  static const String docPatientAppointmentScreen =
      "doc_patient_appointment_screen";
  static const String assistantScreen = "assistant_screen";
  static const String assistantProfileScreen = "assistant_profile_screen";
}

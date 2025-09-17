import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/roles/doctor/features/appointments/presentation/screens/appointment_request_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/authentication/presentation/screens/login_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/authentication/presentation/screens/sign_up_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/home/presentation/screens/home_screen.dart';
import 'package:shifa_mobile_app/roles/doctor/features/patient/presentation/screens/all_patients_screen.dart';

class DoctorNavBarScreen extends StatefulWidget {
  const DoctorNavBarScreen({super.key});

  @override
  State<DoctorNavBarScreen> createState() => _DoctorNavBarScreenState();
}

class _DoctorNavBarScreenState extends State<DoctorNavBarScreen> {
  List doctorScreens = [
    HomeScreen(),
    AllPatientsScreen(),
    OnboardingScreenTwo(),
    LoginScreen(),
    SignUpScreen(),
  ];

  int _selectededIndex = 0;
  onTapItems(int index) {
    setState(() {
      _selectededIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectededIndex,
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.secondary,
        unselectedItemColor:  AppColors.white ,
        onTap: onTapItems,
        items: [
          BottomNavigationBarItem(
            icon: _selectededIndex == 0 ?SvgPicture.asset(Images.doctorHome) : SvgPicture.asset(Images.homeSvg),
            label: "Home",
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon:_selectededIndex == 1 ? SvgPicture.asset(Images.patientSec) : SvgPicture.asset(Images.patientSvg),
            label: "Patients",
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Images.filesSvg),
            label: "Files",
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Images.assistantSvg),
            label: "Assistant",
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Images.profileSvg),
            label: "Profile",
            backgroundColor: AppColors.primary,
          ),
        ],
      ),
      body: doctorScreens[_selectededIndex],
    );
  }
}

import 'package:shifa_mobile_app/core/exports.dart';

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
        unselectedItemColor: AppColors.white,
        onTap: onTapItems,
        items: [
          BottomNavigationBarItem(
            icon: _selectededIndex == 0
                ? SvgPicture.asset(Images.doctorHome)
                : SvgPicture.asset(Images.homeSvg),
            label: "Home",
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: _selectededIndex == 1
                ? SvgPicture.asset(Images.patientSec)
                : SvgPicture.asset(Images.patientSvg),
            label: "Patients",
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: _selectededIndex == 2
                ? SvgPicture.asset(Images.assistantSec)
                : SvgPicture.asset(Images.assistantSvg),
            label: "Assistant",
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: _selectededIndex == 3
                ? SvgPicture.asset(Images.alertSec)
                : SvgPicture.asset(Images.alertSvg),
            label: "Alerts",
            backgroundColor: AppColors.primary,
          ),
          BottomNavigationBarItem(
            icon: _selectededIndex == 4
                ? SvgPicture.asset(Images.profile)
                : SvgPicture.asset(Images.profileSvg),
            label: "Profile",
            backgroundColor: AppColors.primary,
          ),
        ],
      ),
      body: doctorScreens[_selectededIndex],
    );
  }
}

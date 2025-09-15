import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/core/widgets/patients_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        
          children: [
            DoctorHomeScreenHeader(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SeeAllWidget(
                    title: AppStrings.upcomingAppointments,
                    subTitle: AppStrings.viewAll,
                    onTap: (){
                      context.pushNamed(AppRouteNames.allAppointmentsScreen);
                    },
                  ),
                  Gap(10.0),
                  UpcomingWidgetHome(),
                  Gap(10.0),
        
                  SetAvailabilityWidget(),
                  Gap(10.0),
        
                   SeeAllWidget(
                    title: AppStrings.patientHistory,
                    subTitle: AppStrings.viewAll,
                  ),
                  Gap(10.0),
                  PatientsCard(),
                  Gap(20.0),
        
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

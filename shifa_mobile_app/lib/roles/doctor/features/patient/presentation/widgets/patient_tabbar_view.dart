import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/roles/doctor/features/patient/presentation/widgets/search_field_patient.dart';


class PatientTabbarView extends StatefulWidget {
  const PatientTabbarView({super.key});

  @override
  State<PatientTabbarView> createState() => _PatientTabbarViewState();
}

class _PatientTabbarViewState extends State<PatientTabbarView> {
    int selectedTabIndex = 0;

  final List<String> tabTitles = [
    "All Patients",
    "Treated",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           CustomTabBar(
              tabs: tabTitles,
              selectedIndex: selectedTabIndex,
              onTabSelected: (index) {
                setState(() {
                  selectedTabIndex = index;
                });
              },
            ),
        
if (selectedTabIndex == 0) ...[
  SearchFieldPatient(),
  Expanded(
    child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: PatientsCard(
            onTap: (){
                    context.pushNamed(AppRouteNames.doctorPatientProfileScreen);

            },
          ),
        );
      },
    ),
  ),
] else if (selectedTabIndex == 1) ...[
  Expanded(
    child: ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: PatientsCard(
            onTap: (){
                    context.pushNamed(AppRouteNames.doctorPatientProfileScreen);

            },
          ),
        );
      },
    ),
  ),
],
        ],),
      ),
    );
  }
}
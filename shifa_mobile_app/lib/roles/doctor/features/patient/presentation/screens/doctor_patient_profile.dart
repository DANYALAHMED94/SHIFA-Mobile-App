import 'package:shifa_mobile_app/core/exports.dart';


class DoctorPatientProfile extends StatefulWidget {
  const DoctorPatientProfile({super.key});

  @override
  State<DoctorPatientProfile> createState() => _DoctorPatientProfileState();
}

class _DoctorPatientProfileState extends State<DoctorPatientProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomPatientAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Gap(50.0),
            AppointmentPatientInfo(),
            Gap(20.0),
        
            DocPatientSessionInfo(),
            Gap(20.0),

            CustomHistory(
              onTap: (){
                context.pushNamed(AppRouteNames.docPatientAppointmentScreen);
              },
            ),


          ],
        ),
      ),
    );
  }
}
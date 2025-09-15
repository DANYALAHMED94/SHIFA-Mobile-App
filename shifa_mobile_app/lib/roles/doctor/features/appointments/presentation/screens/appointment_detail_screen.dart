import 'package:shifa_mobile_app/core/exports.dart';

class AppointmentDetailScreen extends StatelessWidget {
  const AppointmentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppbarWidget(title: AppStrings.appointmentsDetail),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomButton(
                height: 20,
                width: 100,
                text: AppStrings.upcoming,
                color: AppColors.greenColor,
                textColor: AppColors.white,
              ),
            ),
            SizedBox(height: 10),
          AppointmentPatientInfo(),
            Gap(10.0),
            AppointmentTherapistInfo(),
            AppText(text: AppStrings.appointmentReason,fontSize: 18,fontWeight: FontWeight.w600,)
          
          ],
        ),
      ),
    );
  }
}

import 'package:shifa_mobile_app/core/exports.dart';

class DocPatientAppointmentScreen extends StatefulWidget {
  const DocPatientAppointmentScreen({super.key});

  @override
  State<DocPatientAppointmentScreen> createState() => _DocPatientAppointmentScreenState();
}

class _DocPatientAppointmentScreenState extends State<DocPatientAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomPatientAppbar(),
      body: PatientTabbarAppointments(),
    );
  }
}
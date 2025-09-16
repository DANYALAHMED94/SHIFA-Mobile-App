import 'package:shifa_mobile_app/core/exports.dart';

class AllAppointmentsScreen extends StatefulWidget {
  const AllAppointmentsScreen({super.key});

  @override
  State<AllAppointmentsScreen> createState() => _AllAppointmentsScreenState();
}

class _AllAppointmentsScreenState extends State<AllAppointmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppbarWidget(title: AppStrings.appointments,isBackButton: true,),
      body: AppointmentTabBarScreens(),
    );
  }
}



import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/roles/doctor/features/availability/presentation/widgets/time_picker_widget.dart';

class RecurringScreen extends StatefulWidget {
  const RecurringScreen({super.key});

  @override
  State<RecurringScreen> createState() => _RecurringScreenState();
}

class _RecurringScreenState extends State<RecurringScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppbarWidget(title: AppStrings.recurringPeriod,isBackButton: true,),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: AppText(text: AppStrings.adjustYourWorkingHours,fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.textColor,)),
            Gap(10.0),

            RecurringCalenderWidget(),
            Gap(10.0),
            AppText(text: AppStrings.hours,fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.primary,),
            Gap(5.0),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TimePickerWidget(),
                TimePickerWidget(),
              ],
            ),
            Gap(50.0),
            Center(
              child: CustomButton(
                height: 50,
                width: MediaQueryHelper.screenWidth(context)*0.90,
                color: AppColors.greenColor,
                textColor: AppColors.white,
                text: "Add",
              ),
            ),


           
        
          ],
        ),
      ),
    );
  }
}
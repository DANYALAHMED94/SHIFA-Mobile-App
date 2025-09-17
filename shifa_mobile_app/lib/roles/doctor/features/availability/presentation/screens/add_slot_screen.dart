import 'package:shifa_mobile_app/core/exports.dart';

class AddSlotScreen extends StatefulWidget {
  const AddSlotScreen({super.key});

  @override
  State<AddSlotScreen> createState() => _AddSlotScreenState();
}

class _AddSlotScreenState extends State<AddSlotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppbarWidget(title: AppStrings.addSlot,isBackButton: true,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             AppText(
                  text: AppStrings.selectDate,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
                Gap(5.0),
          AddSlotCalenderWidget(),
                Gap(10.0),
                SeeAllWidget(title: AppStrings.availability,subTitle: AppStrings.mon225,),
                Gap(5.0),
          
                AvailabilityCardWidget(),
                Gap(10.0),
          
                    AppText(text: AppStrings.addSlot,fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.primary,),
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
           Gap(50.0),

          
          ],),
        ),
      ),
    );
  }
}
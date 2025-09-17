import 'package:shifa_mobile_app/core/exports.dart';

class AssistantCardWidget extends StatelessWidget {
  const AssistantCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: AppColors.primary,
        
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                height: 80,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(image: AssetImage(Images.patientPng))
                ),
              ),
              Gap(10.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: AppStrings.assistant,fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.white,),
                  AppText(text: AppStrings.phychologist,fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.secondary,),
                ],
              )
            ],),
            SvgPicture.asset(Images.arrowForward,height: 30,width: 30,)
          ],
        ),
      ),
    );
  }
}
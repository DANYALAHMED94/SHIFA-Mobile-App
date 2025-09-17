import 'package:shifa_mobile_app/core/exports.dart';

class AssistantInfoCard extends StatelessWidget {
  const AssistantInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: AppColors.secondary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: AppStrings.reviews,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
              Gap(10.0),
              AppText(text: "234",fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.primary,),
            ],
          ),
          SizedBox(
            height: 60,
            child: VerticalDivider(color: AppColors.primary),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: AppStrings.patients,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
              Gap(10.0),
              AppText(text: "543",fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.primary,),
            ],
          ),
          SizedBox(
            height: 60,
            child: VerticalDivider(color: AppColors.primary),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: AppStrings.yearsExp,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.primary,
              ),
              Gap(10.0),
              AppText(text: "10",fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.primary,),
            ],
          ),
        ],
      ),
    );
  }
}

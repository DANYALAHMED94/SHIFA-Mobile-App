import 'package:shifa_mobile_app/core/exports.dart';

class DocPatientSessionInfo extends StatelessWidget {
  const DocPatientSessionInfo({super.key});

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
                text: AppStrings.sessions,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
              Gap(10.0),
              AppText(text: "8"),
            ],
          ),
                    SizedBox(
            height: 60,
            child: VerticalDivider(color: AppColors.primary,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: AppStrings.completed,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
              Gap(10.0),
              AppText(text: "8"),
            ],
          ),
          SizedBox(
            height: 60,
            child: VerticalDivider(color: AppColors.primary,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: AppStrings.remaining,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
              Gap(10.0),
              AppText(text: "8"),
            ],
          ),
        ],
      ),
    );
  
  }
}

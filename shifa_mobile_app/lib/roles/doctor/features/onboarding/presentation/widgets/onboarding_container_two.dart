
import 'package:shifa_mobile_app/core/exports.dart';


class OnboardingContainerTwo extends StatelessWidget {
  const OnboardingContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQueryHelper.screenHeight(context) * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
            AppText(
              text: AppStrings.onboardingTextTwo,
              color: AppColors.primary,
              fontSize: 27,
              fontWeight: FontWeight.w600,
            ),
            Gap(30),
          ],
        ),
      ),
    );
  }
}

import 'package:shifa_mobile_app/core/exports.dart';

class OnboardingContainer extends StatelessWidget {
  const OnboardingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQueryHelper.screenHeight(context) * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
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
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  context.pushNamed(AppRouteNames.onboardingTwo);
                },
                child: SizedBox(
                  width: 35,
                  child: SvgPicture.asset(Images.arrowForward),
                ),
              ),
            ),
            AppText(
              text: AppStrings.onboardingText,
              color: AppColors.white,
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

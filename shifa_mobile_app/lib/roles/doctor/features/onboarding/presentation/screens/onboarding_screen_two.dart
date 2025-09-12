import 'package:shifa_mobile_app/core/exports.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQueryHelper.screenHeight(context) * 0.70,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Images.onboardingTwoPng),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          OnboardingContainerTwo(),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: CustomButton(
                text: AppStrings.getStarted,
                color: AppColors.primary,
                textColor: AppColors.white,
                fontWeight: FontWeight.w600,
                fontSize: 28,
                width: MediaQueryHelper.screenWidth(context) * 0.50,
                onTap: () {
                  context.pushNamed(AppRouteNames.socialLoginScreen);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

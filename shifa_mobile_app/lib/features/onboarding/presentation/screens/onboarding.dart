import 'package:shifa_mobile_app/core/exports.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
                  image: AssetImage(Images.onboarding),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          OnboardingContainer(),
        ],
      ),
    );
  }


}

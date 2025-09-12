import 'package:shifa_mobile_app/core/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthHeader(),
            Gap(MediaQueryHelper.screenHeight(context) * 0.10),
            AppText(
              text: AppStrings.login,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
            Gap(8.0),
            AppText(
              text: AppStrings.enterEmailAndPassword,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),

            Gap(20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  CustomTextField(hintText: AppStrings.email),
                  Gap(8.0),

                  CustomTextField(hintText: AppStrings.password),
                  Gap(20),
                  CustomButton(
                    text: AppStrings.login,
                    color: AppColors.greenColor,
                    textColor: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    width: MediaQueryHelper.screenWidth(context) * 0.90,
                    onTap: () {
                              context.pushNamed(AppRouteNames.profileSetupScreen);

                    },
                  ),
                  Gap(10),

                  RichText(
                    text: TextSpan(
                      text: AppStrings.createNewAccount,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' ${AppStrings.signUp}?',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondary,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.pushNamed(AppRouteNames.signUpScreen);
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:shifa_mobile_app/core/exports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> roles = [
      'Doctor',
      'Patient',
      'Assistant',
      'Pharmacy/Clinic',
    ];
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthHeader(),
            Gap(30.0),
            AppText(
              text: AppStrings.createNewAccount,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
            Gap(8.0),
            AppText(
              text: AppStrings.signUpToGetStarted,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),

            Gap(20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  CustomTextField(hintText: AppStrings.fullName),
                  Gap(8.0),

                  CustomTextField(hintText: AppStrings.email),
                  Gap(8.0),

                  CustomTextField(hintText: AppStrings.password),
                  Gap(8.0),

                  CustomDropdownField(
                    hintText: AppStrings.role,
                    isSuffixShow: true,
                    items: roles.map((role) {
                      return DropdownMenuItem<String>(
                        value: role,
                        child: Text(role),
                      );
                    }).toList(),
                    onChanged: (val) {
                      print("Selected: $val");
                    },
                    validator: (val) {
                      if (val == null || val.toString().isEmpty) {
                        return "Please select an option";
                      }
                      return null;
                    },
                  ),

                  Gap(20),
                  CustomButton(
                    text: AppStrings.signUp,
                    color: AppColors.greenColor,
                    textColor: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    width: double.infinity,
                    onTap: () {
                              context.pushNamed(AppRouteNames.profileSetupScreen);

                    },
                  ),
                  Gap(10),

                  RichText(
                    text: TextSpan(
                      text: AppStrings.alreadyHaveAnAccount,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: AppStrings.login,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondary,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.pushNamed(AppRouteNames.loginScreen);
                            },
                        ),
                      ],
                    ),
                  ),
                  Gap(MediaQueryHelper.screenHeight(context) * 0.12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

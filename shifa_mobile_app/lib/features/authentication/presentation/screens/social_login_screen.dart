import 'package:shifa_mobile_app/core/exports.dart';

class SocialLoginScreen extends StatelessWidget {
  const SocialLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          AuthHeader(),
          Gap(MediaQueryHelper.screenHeight(context)*0.12),
          SocialButton(
            text: AppStrings.loginWithGoogle,
            image: Images.googleSvg,
          ),
          Gap(20.0),

          SocialButton(
            text: AppStrings.loginWithFaceBook,
            image: Images.facebookSvg,
          ),
          Gap(20.0),

          SocialButton(text: AppStrings.loginWithApple, image: Images.appleSvg),
          Gap(20.0),

          SocialButton(
            text: AppStrings.loginWithPassword,
            image: Images.lockSvg,
          ),
                   Gap(MediaQueryHelper.screenHeight(context)*0.20),


          RichText(
          text: TextSpan(
            text: AppStrings.createNewAccount , 
            style: TextStyle(fontSize: 21, color: AppColors.white,fontWeight: FontWeight.w400,),
            children: <TextSpan>[
              
              TextSpan(
                text: ' ${AppStrings.signUp}?',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600, color: AppColors.secondary),
              ),
              
            ],
          ),
        ),
      

        ],
      ),
    );
  }
}

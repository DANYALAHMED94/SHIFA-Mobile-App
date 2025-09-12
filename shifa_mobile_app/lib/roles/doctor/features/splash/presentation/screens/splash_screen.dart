import 'package:go_router/go_router.dart';
import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      context.pushNamed(AppRouteNames.onboarding);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.splash),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppText(
              text: AppStrings.appName,
              fontSize: 40,
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
            Gap(60),
          ],
        ),
      ),
    );
  }
}

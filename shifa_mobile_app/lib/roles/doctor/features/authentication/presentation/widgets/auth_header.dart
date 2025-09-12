import 'package:shifa_mobile_app/core/exports.dart';


class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQueryHelper.screenHeight(context)*0.25,
      width: double.infinity,
      decoration: BoxDecoration(
      color: AppColors.white,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
      ),
      child: Image.asset(Images.authHeaderPng)
    );
  }
}
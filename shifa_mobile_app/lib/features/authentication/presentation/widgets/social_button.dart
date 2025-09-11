import 'package:shifa_mobile_app/core/exports.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final String text;
  const SocialButton({super.key, this.image = "", this.text = ""});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: width * 0.80,
      decoration: BoxDecoration(
        color: AppColors.thirdColor,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SvgPicture.asset(image),
          Gap(16.0),
          AppText(text: text, fontWeight: FontWeight.w700, fontSize: 16),
          
        ],
      ),
    );
  }
}

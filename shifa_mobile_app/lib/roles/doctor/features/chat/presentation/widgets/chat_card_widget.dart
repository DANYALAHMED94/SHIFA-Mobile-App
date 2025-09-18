import 'package:shifa_mobile_app/core/exports.dart';


class ChatCardWidget extends StatelessWidget {
  const ChatCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
         padding: EdgeInsets.all(10),
          width: MediaQueryHelper.screenWidth(context)*0.70,
          decoration: BoxDecoration(
          color: AppColors.secondary,
            borderRadius: BorderRadius.circular(24),
          ),
          child: AppText(text: AppStrings.lorem),
      ),
        Positioned(
          top: -5.0,
          child: CircleAvatar(radius: 10,backgroundImage: AssetImage(Images.patientPng),)),
      ],
    );
  }
}
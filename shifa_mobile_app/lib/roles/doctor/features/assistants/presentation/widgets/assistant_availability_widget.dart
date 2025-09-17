import 'package:shifa_mobile_app/core/exports.dart';


class AssistantAvailabilityWidget extends StatelessWidget {
  const AssistantAvailabilityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 3,backgroundColor: AppColors.black,),
        Gap(5.0),
      AppText(text: AppStrings.monToFriday)
      ],
    );
  }
}
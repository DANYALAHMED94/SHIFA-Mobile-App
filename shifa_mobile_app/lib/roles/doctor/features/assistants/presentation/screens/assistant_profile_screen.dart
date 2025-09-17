import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/roles/doctor/features/assistants/presentation/widgets/assistant_availability_widget.dart';
import 'package:shifa_mobile_app/roles/doctor/features/assistants/presentation/widgets/assistant_header_profile.dart';
import 'package:shifa_mobile_app/roles/doctor/features/assistants/presentation/widgets/assistant_info_card.dart';

class AssistantProfileScreen extends StatefulWidget {
  const AssistantProfileScreen({super.key});

  @override
  State<AssistantProfileScreen> createState() => _AssistantProfileScreenState();
}

class _AssistantProfileScreenState extends State<AssistantProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AssistantHeaderProfile(),
            Gap(10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AssistantInfoCard(),
                  Gap(10.0),
                  AppText(
                    text: AppStrings.aboutMe,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                  AppText(
                    text:
                        "“I am a board-certified physician with 8+ years of experience in internal medicine. I focus on preventive care, chronic disease management, and building long-term wellness plans to help patients live healthier lives.”",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                  Gap(10.0),
                  AppText(
                    text: AppStrings.availability,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                  AssistantAvailabilityWidget(),
                  AssistantAvailabilityWidget(),
                           Gap(10.0),
                  AppText(
                    text: AppStrings.preferredLanguage,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
          AppText(text: AppStrings.english),
                     Gap(50.0),
                Center(
                  child: CustomButton(
                    height: 50,
                    width: MediaQueryHelper.screenWidth(context)*0.90,
                    color: AppColors.greenColor,
                    textColor: AppColors.white,
                    text: AppStrings.inviteAsAssiatant,
                  ),
                ),
             Gap(50.0),
        
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

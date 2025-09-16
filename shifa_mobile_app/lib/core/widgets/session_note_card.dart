import 'package:shifa_mobile_app/core/exports.dart';


class SessionNoteCard extends StatelessWidget {
  const SessionNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
      color: AppColors.secondary,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppText(text: AppStrings.improveSpeechClarity,fontSize: 16,fontWeight: FontWeight.w600,),
            AppText(text: AppStrings.starttoEndDate,fontSize: 14,fontWeight: FontWeight.w400,),
            AppText(text: AppStrings.inProgress,fontSize: 14,fontWeight: FontWeight.w400,)
        
          ],
        ),
      ),
    );
  }
}
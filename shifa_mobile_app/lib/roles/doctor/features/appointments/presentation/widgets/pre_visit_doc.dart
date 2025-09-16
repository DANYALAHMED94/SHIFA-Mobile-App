import 'package:shifa_mobile_app/core/exports.dart';

class PreVisitDoc extends StatelessWidget {
  const PreVisitDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black
        ),
        borderRadius: BorderRadius.circular(14.0),
        color: AppColors.secondary
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(Images.docPng),
            ),
            Gap(8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
                AppText(text: AppStrings.videoCall,fontSize: 16,fontWeight: FontWeight.w600,),
                AppText(text: AppStrings.dec192025,fontSize: 14,fontWeight: FontWeight.w400,),
            
              ],
            ),
          ],
        ),
      ),
    );


  }
}
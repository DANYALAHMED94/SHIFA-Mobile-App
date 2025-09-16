import 'package:shifa_mobile_app/core/exports.dart';

class RecurringPeriodWidget extends StatelessWidget {
  const RecurringPeriodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: AppColors.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: AppStrings.monFri,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
                AppText(
                  text: AppStrings.tenAMto5PM,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ],
            ),

         
           
           SvgPicture.asset(Images.edit)
          ],
        ),
      ),
    );
  
  }
}

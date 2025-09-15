import '../../../../../../core/exports.dart';

class SetAvailabilityWidget extends StatelessWidget {
  const SetAvailabilityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: MediaQueryHelper.screenWidth(context) * 0.95,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(text: AppStrings.setAvailability,fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.white,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(child: SvgPicture.asset(Images.clockSvg,),width: 24,),
                SizedBox(child: SvgPicture.asset(Images.arrowForward,),width: 24,)
        
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:shifa_mobile_app/core/exports.dart';

class AvailableSlotsWidget extends StatelessWidget {
  const AvailableSlotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: AppStrings.sixThirtyAmToSevenThirtyAm,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
        Row(
          children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(Images.delete)),
                  Gap(5.0),
              SvgPicture.asset(Images.clockSvg),
          ],
        )
          ],
        ),
      ),
    );
  }
}

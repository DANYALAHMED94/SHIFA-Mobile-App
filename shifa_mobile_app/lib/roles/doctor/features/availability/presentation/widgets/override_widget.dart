import 'package:shifa_mobile_app/core/exports.dart';

class OverrideWidget extends StatelessWidget {
  const OverrideWidget({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: AppStrings.june16,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
                Row(
                  children: [
                    SvgPicture.asset(Images.edit),
                    Gap(5.0),
                    SvgPicture.asset(Images.delete),
                  ],
                ),
              ],
            ),

            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: AppStrings.june16,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
                Row(
                  children: [
                    SvgPicture.asset(Images.edit),
                    Gap(5.0),
                    SvgPicture.asset(Images.delete),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

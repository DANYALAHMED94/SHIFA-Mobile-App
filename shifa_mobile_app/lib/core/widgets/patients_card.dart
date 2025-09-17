import 'package:shifa_mobile_app/core/exports.dart';

class PatientsCard extends StatelessWidget {
  final Function()? onTap;
  const PatientsCard({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: MediaQueryHelper.screenWidth(context) * 0.95,
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(Images.lindaPng),
              radius: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: AppStrings.linda,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: AppColors.black,
                ),
                AppText(
                  text: AppStrings.id + ". " + AppStrings.number,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.black,
                ),
                AppText(
                  text: "Next: Sept 14 · 3:00 PM",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.black,
                ),
              ],
            ),
            SvgPicture.asset(Images.arrowForwardBlack)
          ],
        ),
      ),
    );
  }
}

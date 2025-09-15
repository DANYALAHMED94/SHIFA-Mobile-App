
import 'package:shifa_mobile_app/core/exports.dart';
export 'package:shifa_mobile_app/roles/doctor/features/home/presentation/widgets/doctor_home_screen_header.dart';

class DoctorHomeScreenHeader extends StatelessWidget {
  const DoctorHomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final containerHeight = MediaQueryHelper.screenHeight(context) * 0.25;

    return Container(
      height: containerHeight + 50,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: containerHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: AppStrings.hello,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                    AppText(
                      text: AppStrings.drMike,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                    AppText(
                      text: AppStrings.psychologist,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                    // const SizedBox(height: 8),
                    // const Icon(
                    //   Icons.notifications,
                    //   color: Colors.white,
                    //   size: 28,
                    // ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            right: 20,

            bottom: MediaQueryHelper.screenHeight(context) * 0.01,
            child: Container(
              width: 120,
              height: MediaQueryHelper.screenHeight(context) * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                // border: Border.all(color: Colors.grey, width: 2),
                image: DecorationImage(
                  image: AssetImage(Images.doctorImagePng),
                  fit: BoxFit.cover,
                ),
              ),
         
            ),
          ),
        ],
      ),
    );
  }
}

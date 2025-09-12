// import 'package:shifa_mobile_app/core/exports.dart';

// class DoctorHomeScreenHeader extends StatelessWidget {
//   const DoctorHomeScreenHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: MediaQueryHelper.screenHeight(context) * 0.25,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: AppColors.primary,
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(30.0),
//               bottomRight: Radius.circular(30.0),
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     AppText(
//                       text: AppStrings.hello,
//                       fontSize: 26,
//                       fontWeight: FontWeight.w500,
//                       color: AppColors.white,
//                     ),
//                     AppText(
//                       text: AppStrings.drMike,
//                       fontSize: 26,
//                       fontWeight: FontWeight.w500,
//                       color: AppColors.white,
//                     ),
//                     AppText(
//                       text: AppStrings.psychologist,
//                       fontSize: 26,
//                       fontWeight: FontWeight.w500,
//                       color: AppColors.white,
//                     ),
//                     Icon(Icons.notifications, color: AppColors.white, size: 28),
//                   ],
//                 ),
//               //  Container(height: 100,width: 100,color: AppColors.secondary,)
//               Positioned(
//                 top: 10,
//                 child: Image.asset(Images.onboarding))
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:shifa_mobile_app/core/exports.dart';

class DoctorHomeScreenHeader extends StatelessWidget {
  const DoctorHomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final containerHeight = MediaQueryHelper.screenHeight(context) * 0.25;

    return SizedBox(
      height: containerHeight + 200,
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
                    const SizedBox(height: 8),
                    const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            right: 20,
            bottom: MediaQueryHelper.screenHeight(context) * 0.2,
            child: Container(
              width: 120,
              height: MediaQueryHelper.screenHeight(context) * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey, width: 2),
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

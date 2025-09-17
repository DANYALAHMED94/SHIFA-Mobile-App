import 'package:shifa_mobile_app/core/exports.dart';

class AssistantHeaderProfile extends StatelessWidget {
  const AssistantHeaderProfile({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Icon(Icons.arrow_back,color: AppColors.white,),
                        Gap(10.0),

                    AppText(
                      text: AppStrings.drSteve,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                    AppText(
                      text: AppStrings.psychologist,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary,
                    ),
                        Gap(5.0),

                    Row(
                      children: [
                        Icon(Icons.star,color: AppColors.yellow,),
                        // Gap(5.0),
                        AppText(text: "4.8",color: AppColors.white,),
                        Gap(5.0),

                        CircleAvatar(radius: 3,backgroundColor: AppColors.white,),
                        Gap(5.0),

                        AppText(text: "127 Reviews",color: AppColors.white,),

                      ],
                    ),
                        Gap(20.0),

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

import 'package:shifa_mobile_app/core/exports.dart';

class AppointmentCard extends StatefulWidget {

  const AppointmentCard({super.key});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(AppRouteNames.appointmentDetail);
      },
      child: Container(
        margin: EdgeInsets.only(right: 5),
        height: 165,
        width: MediaQueryHelper.screenWidth(context)*0.95,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(Images.lindaPng),
                        radius: 30,
                  
                      ),
                      Gap(10.0),
      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQueryHelper.screenWidth(context)*0.48,
                            child: AppText(
                              text: AppStrings.linda,
                              fontSize: 22,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            
                              maxLines: 1,
                            ),
                          ),
                          AppText(
                            text: AppStrings.therapy,
                            fontSize: 14,
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    // height: 35,
                    // width: MediaQueryHelper.screenWidth(context)*0.20,
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: AppText(
                        text: AppStrings.start,
                        fontSize: 18.0,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20.0),
              Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: AppStrings.location,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                          AppText(
                            text: AppStrings.online,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greenColor,
                          ),
                        ],
                      ),
                      Container(height: 30, width: 1, color: AppColors.primary),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: AppStrings.date12,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                          AppText(
                            text: AppStrings.time630,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greenColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


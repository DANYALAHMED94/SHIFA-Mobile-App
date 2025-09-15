import 'package:shifa_mobile_app/core/exports.dart';

class AppointmentPatientInfo extends StatelessWidget {
  const AppointmentPatientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
            padding: const EdgeInsets.only(left: 10, right: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  height: 100,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(Images.linda),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Gap(10.0),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.linda,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                          AppText(
                            text: AppStrings.patient,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff838383),
                          ),
                        ],
                      ),

                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.age,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),

                          AppText(
                            text: AppStrings.n23,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),
                        ],
                      ),

                      Divider(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.gender,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),

                          AppText(
                            text: AppStrings.female,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.contact,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),

                          AppText(
                            text: AppStrings.contactNum,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.n23,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),

                          AppText(
                            text: AppStrings.idP1024,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        
  }
}


class AppointmentTherapistInfo extends StatelessWidget {
  const AppointmentTherapistInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
            padding: const EdgeInsets.only(left: 10, right: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  height: 100,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(Images.therapistPng),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Gap(10.0),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.drMike,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                          AppText(
                            text: AppStrings.doctor,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff838383),
                          ),
                        ],
                      ),

                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.age,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),

                          AppText(
                            text: AppStrings.n23,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),
                        ],
                      ),

                      Divider(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.gender,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),

                          AppText(
                            text: AppStrings.male,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: AppStrings.therapist,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),

                          AppText(
                            text: AppStrings.years10Exp,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightGrey,
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
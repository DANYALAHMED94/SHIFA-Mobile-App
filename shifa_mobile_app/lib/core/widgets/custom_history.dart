import 'package:shifa_mobile_app/core/exports.dart';

class CustomHistory extends StatelessWidget {
  final Function()? onTap;
  const CustomHistory({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 85,
        width: double.infinity,
        decoration: BoxDecoration(
        color: AppColors.primary,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(text: AppStrings.appointmentHistory,fontWeight: FontWeight.w600,fontSize: 20,color: AppColors.white,),
              SvgPicture.asset(Images.arrowForward),
            ],
          ),
        ),
      ),
    );
  }
}
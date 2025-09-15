import 'package:shifa_mobile_app/core/exports.dart';


class SeeAllWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function()? onTap;
  const SeeAllWidget({super.key,this.title = "", this.subTitle = "",this.onTap});

  @override
  Widget build(BuildContext context) {
    return    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              AppText(text: title,fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.primary,),
              AppText(
                onTap: onTap,
                text: subTitle,fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.secondary,),
            ],);
  }
}
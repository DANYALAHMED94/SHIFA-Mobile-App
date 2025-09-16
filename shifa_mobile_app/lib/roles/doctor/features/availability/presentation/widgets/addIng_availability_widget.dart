import 'package:shifa_mobile_app/core/exports.dart';


class AddingAvailabilityWidget extends StatelessWidget {
  final String text;
   Function()? onTap;
   AddingAvailabilityWidget({super.key, this.onTap ,this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
AppText(text: text,fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.primary,),
GestureDetector(
  onTap:onTap,
  child: Icon(Icons.add,color: AppColors.primary,))

      ],
    );
  }
}
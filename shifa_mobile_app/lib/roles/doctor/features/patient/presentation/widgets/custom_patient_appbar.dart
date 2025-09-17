import 'package:flutter/material.dart';
import 'package:shifa_mobile_app/core/exports.dart';

class CustomPatientAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomPatientAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: AppColors.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    context.pop();
                  },
                  child: Icon(Icons.arrow_back, color: AppColors.white)),
                Gap(10.0),
        
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(Images.patientPng),
                ),
                Gap(10.0),
                AppText(
                  text: AppStrings.samantha,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: AppColors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

import 'package:flutter/material.dart';
import 'package:shifa_mobile_app/core/exports.dart';

class AvailabilityCardWidget extends StatelessWidget {
  const AvailabilityCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: AppStrings.sxi30,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          AppText(
                  text: AppStrings.to,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              
            AppText(
              text: AppStrings.four30,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}

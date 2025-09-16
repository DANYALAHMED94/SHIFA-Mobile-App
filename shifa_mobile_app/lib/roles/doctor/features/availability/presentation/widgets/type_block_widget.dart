import 'package:flutter/material.dart';
import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/roles/doctor/features/availability/presentation/widgets/time_picker_widget.dart';

class TypeBlockWidget extends StatefulWidget {
  const TypeBlockWidget({super.key});

  @override
  _TypeBlockWidgetState createState() => _TypeBlockWidgetState();
}

class _TypeBlockWidgetState extends State<TypeBlockWidget> {
  String? _selectedType =
      ''; // Default selected type (either 'Type 1' or 'Type 2')

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: AppStrings.type,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
        Gap(10.0),
        Row(
          children: [
            Radio<String>(
              fillColor: WidgetStatePropertyAll(AppColors.secondary),
              value: 'Type 1',
              groupValue: _selectedType,
              onChanged: (value) {
                setState(() {
                  _selectedType = value;
                });
              },
            ),
            AppText(
              text: AppStrings.block,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        Row(
          children: [
            Radio<String>(
              fillColor: WidgetStatePropertyAll(AppColors.secondary),

              value: 'Type 2',
              groupValue: _selectedType,
              onChanged: (value) {
                setState(() {
                  _selectedType = value;
                });
              },
            ),
            AppText(
              text: AppStrings.extra,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        Gap(10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 AppText(
                  text: AppStrings.startTime,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: AppColors.primary,
                  
                             ),
                             Gap(5.0),
                             TimePickerWidget()
               ],
             ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 AppText(
                  text: AppStrings.endTime,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: AppColors.primary,
                  
                             ),
                             Gap(5.0),
                             TimePickerWidget()
               ],
             ),
         
          ],
        )
      ],
    );
  }
}

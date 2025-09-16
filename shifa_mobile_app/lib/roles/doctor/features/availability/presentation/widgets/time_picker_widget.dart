import 'package:flutter/material.dart';
import 'package:shifa_mobile_app/core/exports.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay _selectedTime = TimeOfDay(hour: 6, minute: 30);

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (selectedTime != null && selectedTime != _selectedTime) {
      setState(() {
        _selectedTime = selectedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime = _selectedTime.format(context);

    return GestureDetector(
      onTap: () => _selectTime(context),
      child: Container(
        height: 44,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppColors.secondary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: formattedTime, 
                fontSize: 16,
              ),
              Icon(Icons.timer_outlined, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

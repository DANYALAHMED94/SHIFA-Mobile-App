import 'package:shifa_mobile_app/core/exports.dart';

class RecurringCalenderWidget extends StatefulWidget {
  const RecurringCalenderWidget({super.key});

  @override
  _RecurringCalenderWidgetState createState() => _RecurringCalenderWidgetState();
}

class _RecurringCalenderWidgetState extends State<RecurringCalenderWidget> {
  DateTime _focusedDay = DateTime.now();
  List<DateTime> _selectedDays = []; // Store multiple selected days

  // Helper method to check if a day is selected
  bool isSelected(DateTime day) {
    return _selectedDays.any((selectedDay) =>
        selectedDay.year == day.year &&
        selectedDay.month == day.month &&
        selectedDay.day == day.day);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TableCalendar(
        calendarFormat: CalendarFormat.week,
        firstDay: DateTime(2023, 1, 1),
        lastDay: DateTime(3000, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) {
          return isSelected(day); // Check if the day is selected
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            // Toggle the selection of the day
            if (isSelected(selectedDay)) {
              _selectedDays.removeWhere((day) =>
                  day.year == selectedDay.year &&
                  day.month == selectedDay.month &&
                  day.day == selectedDay.day);
            } else {
              _selectedDays.add(selectedDay);
            }
            _focusedDay = focusedDay;
          });
          print('Selected days: $_selectedDays');
        },
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          leftChevronIcon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          ),
          rightChevronIcon: Icon(
            Icons.arrow_forward_ios,
            color: AppColors.white,
          ),
          titleTextStyle: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: TextStyle(color: AppColors.white),
          weekendStyle: TextStyle(color: AppColors.white),
        ),
        calendarStyle: CalendarStyle(
          defaultTextStyle: const TextStyle(color: AppColors.white),
          weekendTextStyle: const TextStyle(color: AppColors.white),
          outsideTextStyle: const TextStyle(color: Colors.white54),
          selectedDecoration: const BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
          ),
          todayDecoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          selectedTextStyle: const TextStyle(
            color: AppColors.primary,
          ),
          todayTextStyle: const TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}

import 'package:shifa_mobile_app/core/exports.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child:TableCalendar(
      calendarFormat: CalendarFormat.week,
      firstDay: DateTime(2023, 1, 1),
      lastDay: DateTime(3000, 12, 31),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
        print('Selected date: $selectedDay');
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



import 'package:intl/intl.dart';  
import 'package:shifa_mobile_app/core/exports.dart';
import 'package:shifa_mobile_app/roles/doctor/features/availability/presentation/widgets/type_block_widget.dart';

class OverridePeriodScreen extends StatefulWidget {
  const OverridePeriodScreen({super.key});

  @override
  State<OverridePeriodScreen> createState() => _OverridePeriodScreenState();
}

class _OverridePeriodScreenState extends State<OverridePeriodScreen> {
  DateTime _selectedDate = DateTime.now(); 

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020), 
      lastDate: DateTime(3000), 
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    String formattedDate = DateFormat('MMM dd, yyyy').format(_selectedDate);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppbarWidget(title: AppStrings.overridePeriod, isBackButton: true),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: AppText(
                text: AppStrings.adjustYourWorkingHours,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.textColor,
              ),
            ),
            Gap(10.0),
            AppText(
              text: AppStrings.date,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
            Gap(5.0),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: formattedDate), 
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
            ),
            Gap(10.0),
            TypeBlockWidget(),
              Gap(50.0),
            Center(
              child: CustomButton(
                height: 50,
                width: MediaQueryHelper.screenWidth(context)*0.90,
                color: AppColors.greenColor,
                textColor: AppColors.white,
                text: "Add",
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

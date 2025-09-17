import 'package:shifa_mobile_app/core/exports.dart';

class SetAvailabilityScreen extends StatefulWidget {
  const SetAvailabilityScreen({super.key});

  @override
  State<SetAvailabilityScreen> createState() => _SetAvailabilityScreenState();
}

class _SetAvailabilityScreenState extends State<SetAvailabilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppbarWidget(title: AppStrings.yourAvailability,isBackButton: true,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CalendarWidget(),
            Gap(20.0),
            AddingAvailabilityWidget(
              text: AppStrings.recurringPeriod,
              onTap: () {
                context.pushNamed(AppRouteNames.recurringScreen);
              },
            ),
            Gap(10.0),
            RecurringPeriodWidget(),
            Gap(10.0),
             AddingAvailabilityWidget(
              text: AppStrings.overrides,
              onTap: () {
                context.pushNamed(AppRouteNames.overridePeriod);

              },
            ),
            Gap(10.0),


            OverrideWidget(),
              Gap(10.0),
                           AddingAvailabilityWidget(
              text: AppStrings.availableSlots,
              onTap: () {
                context.pushNamed(AppRouteNames.addSlotScreen);
              },
            ),
              Gap(10.0),

            AvailableSlotsWidget(),

          ],
        ),
      ),
    );
  }
}

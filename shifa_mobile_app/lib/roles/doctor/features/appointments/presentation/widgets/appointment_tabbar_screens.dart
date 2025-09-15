import 'package:shifa_mobile_app/core/exports.dart';

class AppointmentTabBarScreens extends StatefulWidget {
  const AppointmentTabBarScreens({super.key});

  @override
  State<AppointmentTabBarScreens> createState() =>
      _AppointmentTabBarScreensState();
}

class _AppointmentTabBarScreensState extends State<AppointmentTabBarScreens> {
  int selectedTabIndex = 0;

  final List<String> tabTitles = [
    "Upcoming",
    "Completed",
    "Reschedule",
    "Cancelled",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          CustomTabBar(
            tabs: tabTitles,
            selectedIndex: selectedTabIndex,
            onTabSelected: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
          ),
          if (selectedTabIndex == 0)
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: AppointmentCard(),
                  );
                },
              ),
            ),

          if (selectedTabIndex == 1)
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: AppointmentCard(),
                  );
                },
              ),
            ),
          if (selectedTabIndex == 2)
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: AppointmentCard(),
                  );
                },
              ),
            ),
          if (selectedTabIndex == 3)
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: AppointmentCard(),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

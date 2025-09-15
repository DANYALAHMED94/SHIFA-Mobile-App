import 'package:shifa_mobile_app/core/exports.dart';

class UpcomingWidgetHome extends StatefulWidget {
  const UpcomingWidgetHome({super.key});

  @override
  State<UpcomingWidgetHome> createState() => _UpcomingWidgetHomeState();
}

class _UpcomingWidgetHomeState extends State<UpcomingWidgetHome> {
  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    int _currentPage = 0;
    return Column(
      children: [
        SizedBox(
          height: 165,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 5,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return AppointmentCard();
            },
          ),
        ),
            Gap(10.0),
       DotWidget(controller: _pageController) 
      ],
    );
  }
}

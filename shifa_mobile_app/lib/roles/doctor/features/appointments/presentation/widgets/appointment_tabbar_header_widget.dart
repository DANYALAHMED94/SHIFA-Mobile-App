
import 'package:shifa_mobile_app/core/exports.dart';
class CustomTabBar extends StatefulWidget {
  final List<String> tabs;
  final Function(int) onTabSelected;
  final int selectedIndex;

  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.onTabSelected,
    required this.selectedIndex,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.tabs.length, (index) {
          final bool isSelected = widget.selectedIndex == index;
      
          return GestureDetector(
            onTap: () => widget.onTabSelected(index),
            child: Container(
              height: 30,
              // width: 100,
              padding: const EdgeInsets.only(right: 10,left: 10),
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.tabbarColor,
                borderRadius: BorderRadius.circular(12),
                // border: Border.all(color: AppColors.primary),
              ),
              child: Center(
                child: AppText(
                  text: widget.tabs[index],
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? AppColors.white : AppColors.black,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}


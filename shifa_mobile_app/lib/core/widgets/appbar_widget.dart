import 'package:shifa_mobile_app/core/exports.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isBackButton;
   AppbarWidget({super.key, this.title = "",this.isBackButton = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(color: AppColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        isBackButton ?  Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 2),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primary,
                    size: 15,
                  ),
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),
            ),
          ) :    const SizedBox(width: 40),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: AppText(
              text: title,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

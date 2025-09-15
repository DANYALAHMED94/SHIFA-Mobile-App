import 'package:shifa_mobile_app/core/exports.dart';


class DotWidget extends StatelessWidget {
  final PageController controller;
  const DotWidget({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
          height: 10, 
          child: SmoothPageIndicator(
            controller: controller,
            count: 5, 
            effect: ExpandingDotsEffect( 
              dotHeight: 8,
              dotWidth: 8,
              spacing: 4,
              radius: 8,
              dotColor: Colors.grey,  
              activeDotColor: AppColors.primary, 
            ),
          ),
        );
           
           
  }
}
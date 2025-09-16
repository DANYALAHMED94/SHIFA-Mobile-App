
import 'package:shifa_mobile_app/core/exports.dart';

class ModalityCard extends StatelessWidget {
  const ModalityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black
        ),
        borderRadius: BorderRadius.circular(14.0),
        color: AppColors.secondary
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.video_call),
          AppText(text: AppStrings.videoCall),

        ],
      ),
    );


  }
}
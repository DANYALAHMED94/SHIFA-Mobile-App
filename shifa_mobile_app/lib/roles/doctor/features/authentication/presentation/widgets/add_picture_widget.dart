import 'package:shifa_mobile_app/core/exports.dart';


class AddPictureWidget extends StatelessWidget {
  const AddPictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      width: 80,
      decoration: BoxDecoration(
      color: AppColors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.camera_alt),
          AppText(text: AppStrings.addPicture,fontSize: 10,)
        ],),
      ),
    );
  }
}
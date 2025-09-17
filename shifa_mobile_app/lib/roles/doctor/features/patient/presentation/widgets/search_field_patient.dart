import 'package:shifa_mobile_app/core/exports.dart';

class SearchFieldPatient extends StatelessWidget {
  const SearchFieldPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQueryHelper.screenWidth(context)*0.80,
      child: TextFormField(
        
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: AppColors.primary),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: AppColors.primary),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: AppColors.primary),
          ),
          hintText: AppStrings.searchPatientByID,
      
        
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0), 
            child: SvgPicture.asset(
              Images.searchPer,
              height: 16, 
              width: 16,
            ),
          ),
        ),
      ),
    );
  }
}

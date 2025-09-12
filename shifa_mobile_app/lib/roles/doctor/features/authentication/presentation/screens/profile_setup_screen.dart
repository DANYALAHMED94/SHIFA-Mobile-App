import 'package:shifa_mobile_app/core/exports.dart';

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthHeader(),
            Gap(30.0),
            AppText(
              text: AppStrings.letBuildYourProfile,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
            Gap(8.0),
            AppText(
              text: AppStrings.setupYourProfile,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
            Gap(8.0),

            AddPictureWidget(),

            Gap(15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  CustomTextField(hintText: AppStrings.aliasName),

                  Gap(8.0),
                  CustomTextField(hintText: AppStrings.medicalId),

                  Gap(8.0),

                  CustomDropdownField(
                    hintText: AppStrings.speciality,
                    isSuffixShow: true,
                    items: medicalSpecialties.map((medicalSpecialties) {
                      return DropdownMenuItem<String>(
                        value: medicalSpecialties,
                        child: Text(medicalSpecialties),
                      );
                    }).toList(),
                    onChanged: (val) {
                      print("Selected: $val");
                    },
                    validator: (val) {
                      if (val == null || val.toString().isEmpty) {
                        return "Please select an option";
                      }
                      return null;
                    },
                  ),
                  Gap(8.0),

                  CustomTextField(hintText: AppStrings.yearsOfExperience),
                  Gap(8.0),

                  CustomDropdownField(
                    hintText: AppStrings.timeZone,
                    isSuffixShow: true,
                    items: timeZones.map((timeZones) {
                      return DropdownMenuItem<String>(
                        value: timeZones,
                        child: Text(timeZones),
                      );
                    }).toList(),
                    onChanged: (val) {
                      print("Selected: $val");
                    },
                    validator: (val) {
                      if (val == null || val.toString().isEmpty) {
                        return "Please select an option";
                      }
                      return null;
                    },
                  ),
                  Gap(8.0),

                  CustomDropdownField(
                    hintText: AppStrings.preferredLanguages,
                    isSuffixShow: true,
                    items: languages.map((languages) {
                      return DropdownMenuItem<String>(
                        value: languages,
                        child: Text(languages),
                      );
                    }).toList(),
                    onChanged: (val) {
                      print("Selected: $val");
                    },
                    validator: (val) {
                      if (val == null || val.toString().isEmpty) {
                        return "Please select an option";
                      }
                      return null;
                    },
                  ),
                  Gap(8.0),

                  CustomtextFieldProfile(
                    hintText: AppStrings.aboutMe,
                    maxLines: 3,
                  ),

                  Gap(20),
                  CustomButton(
                    text: AppStrings.submit,
                    color: AppColors.greenColor,
                    textColor: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    width: double.infinity,
                    onTap: () {
                      context.pushNamed(AppRouteNames.doctorNavbarScreen);
                    },
                  ),

                  Gap(MediaQueryHelper.screenHeight(context) * 0.12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const List<String> languages = ["English", "Arabic"];

final List<String> roles = [
  'Doctor',
  'Patient',
  'Assistant',
  'Pharmacy/Clinic',
];
const List<String> medicalSpecialties = [
  // Primary Care
  'Family Medicine',
  'Internal Medicine',
  'Pediatrics',
  'Geriatrics',
  'Preventive Medicine',

  // Medical Specialties
  'Cardiology',
  'Endocrinology',
  'Gastroenterology',
  'Hematology',
  'Infectious Disease',
  'Nephrology',
  'Oncology',
  'Pulmonology',
  'Rheumatology',
  'Allergy & Immunology',

  // Neurology & Related
  'Neurology',
  'Neurocritical Care',
  'Sleep Medicine',
  'Pain Medicine',

  // Psychiatry
  'Psychiatry',
  'Child & Adolescent Psychiatry',
  'Addiction Psychiatry',
  'Forensic Psychiatry',

  // Surgical Specialties
  'General Surgery',
  'Orthopedic Surgery',
  'Neurosurgery',
  'Plastic Surgery',
  'Cardiothoracic Surgery',
  'Vascular Surgery',
  'Pediatric Surgery',
  'Colon and Rectal Surgery',

  // Head & Neck
  'Otolaryngology (ENT)',
  'Ophthalmology',
  'Oral and Maxillofacial Surgery',

  // Women’s Health
  'Obstetrics and Gynecology (OB/GYN)',
  'Maternal-Fetal Medicine',
  'Gynecologic Oncology',
  'Reproductive Endocrinology',

  // Pediatric Subspecialties
  'Pediatric Cardiology',
  'Pediatric Gastroenterology',
  'Pediatric Neurology',
  'Pediatric Oncology',
  'Pediatric Surgery',

  // Anesthesia & Critical Care
  'Anesthesiology',
  'Critical Care Medicine',
  'Palliative Care',

  // Diagnostic
  'Radiology',
  'Interventional Radiology',
  'Diagnostic Radiology',
  'Pathology',
  'Nuclear Medicine',
  'Forensic Pathology',

  // Rehabilitation & Physical Medicine
  'Physical Medicine and Rehabilitation (PM&R)',
  'Sports Medicine',
  'Occupational Medicine',

  // Public Health & Preventive
  'Public Health',
  'Aerospace Medicine',
  'Environmental Medicine',

  // Other / Allied Health
  'Nurse Practitioner',
  'Physician Assistant',
  'Pharmacist',
  'Clinical Psychologist',
  'Therapist',
  'Chiropractor',

  // Optional
  'Other',
];

const List<String> timeZones = [
  // United States Time Zones
  'UTC−10:00 — Hawaii Standard Time (HST)',
  'UTC−09:00 — Alaska Standard Time (AKST)',
  'UTC−08:00 — Pacific Standard Time (PST)',
  'UTC−07:00 — Mountain Standard Time (MST)',
  'UTC−06:00 — Central Standard Time (CST)',
  'UTC−05:00 — Eastern Standard Time (EST)',
  'UTC−04:00 — Atlantic Standard Time (AST)',

  // Canada (some overlap with US)
  'UTC−03:30 — Newfoundland Standard Time (NST)',

  // Europe
  'UTC+00:00 — Greenwich Mean Time (GMT)',
  'UTC+01:00 — Central European Time (CET)',
  'UTC+02:00 — Eastern European Time (EET)',
  'UTC+03:00 — Moscow Standard Time (MSK)',

  // Asia
  'UTC+03:30 — Iran Standard Time (IRST)',
  'UTC+04:00 — Gulf Standard Time (GST)',
  'UTC+05:00 — Pakistan Standard Time (PKT)',
  'UTC+05:30 — India Standard Time (IST)',
  'UTC+06:00 — Bangladesh Standard Time (BST)',
  'UTC+07:00 — Indochina Time (ICT)',
  'UTC+08:00 — China Standard Time (CST)',
  'UTC+09:00 — Japan Standard Time (JST)',
  'UTC+09:30 — Australian Central Standard Time (ACST)',
  'UTC+10:00 — Australian Eastern Standard Time (AEST)',
  'UTC+12:00 — New Zealand Standard Time (NZST)',

  // Africa
  'UTC+01:00 — West Africa Time (WAT)',
  'UTC+02:00 — Central Africa Time (CAT)',
  'UTC+03:00 — East Africa Time (EAT)',

  // South America
  'UTC−05:00 — Colombia Time (COT)',
  'UTC−04:00 — Venezuela Time (VET)',
  'UTC−03:00 — Argentina Time (ART)',

  // Middle East
  'UTC+03:00 — Arabia Standard Time (AST)',
  'UTC+04:30 — Afghanistan Time (AFT)',

  // Others
  'UTC — Coordinated Universal Time (UTC)',
];

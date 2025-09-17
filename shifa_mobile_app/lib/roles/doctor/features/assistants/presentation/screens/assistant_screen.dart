import 'package:shifa_mobile_app/core/exports.dart';

class AssistantScreen extends StatefulWidget {
  const AssistantScreen({super.key});

  @override
  State<AssistantScreen> createState() => _AssistantScreenState();
}

class _AssistantScreenState extends State<AssistantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppbarWidget(title: AppStrings.assistants,),
      body: ListView.builder(itemBuilder: (context,index){
        return AssistantCardWidget();
      })
      
    );
  }
}
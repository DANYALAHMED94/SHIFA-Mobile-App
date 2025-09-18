import 'package:shifa_mobile_app/core/exports.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomPatientAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Gap(10.0),
          ChatCardWidget(),
          Gap(10.0),

          ChatCardWidget(),
          Spacer(),
          ChatField(),
          Gap(10.0),

        ],),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:shifa_mobile_app/roles/doctor/features/splash/presentation/screens/splash_screen.dart';
import 'package:shifa_mobile_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unhcr_jobs/view/screens/welcome_screen.dart';

import 'view/screens/jobs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UNHCR Jobs',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: WelcomeScreen(),
    );
  }
}

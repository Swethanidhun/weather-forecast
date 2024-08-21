import 'package:flutter/material.dart';
import 'package:forecast/modules/splash-module/splashscreen.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:forecast/modules/home_module/homescreen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Get.to(() => HomeScreen());
      },
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/sunshine-14343_256.gif"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

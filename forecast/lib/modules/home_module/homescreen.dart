import 'package:flutter/material.dart';
import 'package:forecast/modules/content_module/contentscreen.dart';
import 'package:forecast/modules/home_module/homeController.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5)),
                height: 150,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Enter City",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 28,
                          color: Colors.teal[400]),
                    ),
                    TextFormField(
                      controller:controller.namecontroller,
                      cursorColor: Colors.white.withOpacity(0.6),
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            Get.to(() => const ContentScreen());
                          },
                          child: const Icon(
                            Icons.arrow_right_sharp,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.black)),
                        filled: true,
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

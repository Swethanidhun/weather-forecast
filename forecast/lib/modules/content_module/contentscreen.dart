import 'package:flutter/material.dart';
import 'package:forecast/modules/content_module/contentController.dart';
import 'package:get/get.dart';

class ContentScreen extends GetWidget<ContentController> {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContentController());
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.8,
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.cover)),
            ),
            Obx(
              () => controller.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(
                      color: Colors.black,
                    ))
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              controller.responsebody.value,
                              style: const TextStyle(
                                  fontSize: 40,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        ));
  }
}

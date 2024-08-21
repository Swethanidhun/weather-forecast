import 'package:forecast/modules/home_module/homeController.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ContentController extends GetxController {
  final isLoading = false.obs;
  final responsebody = "".obs;
  final statusCode = 0.obs;
  final controller = Get.put(HomeController());
  Future<void> getWeatherData() async {
    isLoading.value = true;
    final response = await http.get(
        Uri.parse("http://wttr.in/${controller.namecontroller.text}?format=4"));
    responsebody.value = response.body;
    statusCode.value = response.statusCode;
    isLoading.value = false;
    if (statusCode.value == 200) {
      print(response.body);
    } else {
      print('Failed to load weather data');
    }
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getWeatherData();
  }
}

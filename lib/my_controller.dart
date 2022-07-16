import 'package:get/get.dart';

class MyController extends GetxController {
  int count = 10;

  void increment() async {
    await Future.delayed(Duration(seconds: 3));
    count = count + 1;
    update();
  }

  void cleanUpTask() {
    print("Clean Up Task");
  }

  @override
  void onInit() {
    print("Init Called");
    increment();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

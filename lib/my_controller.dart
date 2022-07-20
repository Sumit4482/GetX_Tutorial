import 'package:get/get.dart';

class MyController extends GetxController {
  int count = 10;
  void increment() {
    print("HELLO");
    ++count;
    update(['txtCount']);
  }
}

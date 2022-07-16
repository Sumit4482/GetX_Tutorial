import 'package:get/get.dart';
import 'student.dart';

class MyController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
}

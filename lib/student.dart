import 'package:get/get.dart';

class Student {
  /*Classes can be made observable by making indivuals
   variables Rx or by making the entire class observable. */

  // Individual Variables Rx

  // var name = "Tom".obs;
  // var age = 35.obs;

  // To make the entire class observable
  String name = "";
  int age = 0;
  Student({required this.name, required this.age});
}

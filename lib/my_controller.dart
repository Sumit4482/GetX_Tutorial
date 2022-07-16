import 'package:get/get.dart';
import 'student.dart';

class MyController extends GetxController {
  // var student = Student();
  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  var student = Student(name: "Sumit", age: 21).obs;
  void convertUpperCase() {
    student.update((val) {
      student.value.name = student.value.name.toUpperCase();
    });
  }
}

import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:getxtutorial/my_controller.dart';
import 'student.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //If init property is not used in GetX<Type of Controller> then
  //create the instance of controller as follows.
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetX<MyController>(
                // init: MyController(),
                builder: (controller) {
                  return Text(
                    "This value is ${myController.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.increment();
                    // Get.find<MyController>().increment();
                  },
                  child: Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}

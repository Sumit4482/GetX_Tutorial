import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:getxtutorial/my_controller.dart';
import 'student.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //Create the instance of Controller
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
              Obx(() => Text(
                    "Name is ${myController.student.value.name}",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  //myController.convertToUpperCase();
                  myController.convertUpperCase();
                },
                child: Text("Upper"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

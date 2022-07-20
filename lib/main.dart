import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:getxtutorial/my_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //If init property is not used in GetX<Type of Controller> then
  //create the instance of controller as follows.
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: " Workers ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Workers"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => myController.increment(),
                child: Text("Increment"),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  onChanged: ((value) {
                    myController.increment();
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

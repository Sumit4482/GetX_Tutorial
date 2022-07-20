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
      title: "Unique ID ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unique ID"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                id: 'txtCount',
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              GetBuilder<MyController>(
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => myController.increment(),
                child: Text("Increment"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

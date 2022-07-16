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
      title: "Controller LifeCycle ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Controller LifeCycle"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                // initState: (data) => myController.increment(),
                // dispose: (_) => myController.cleanUpTask(),
                builder: (controller) {
                  return Text(
                    "The Value is ${controller.count}",
                    style: TextStyle(fontSize: 26),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var count = 0.obs;

  void icrement() {
    count++;
  }

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
              Obx((() => Text("Count value is $count"))),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  icrement();
                },
                child: Text("Increment"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

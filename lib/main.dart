import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Go to Home"),
                onPressed: () async {
                  // Get.to(
                  //   Home(),
                  //   //this will open a new screen as a full screen dialog
                  //   fullscreenDialog: true,
                  //   transition: Transition.zoom,
                  //   duration: Duration(milliseconds: 3000),
                  //   curve: Curves.easeInBack,
                  // );
                  // Get.off(Home());
                  // Get.offAll(Home());
                  // Get.to(Home(), arguments: "Data from Main");

                  var data = await Get.to(Home());
                  print("The Recived data is $data");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

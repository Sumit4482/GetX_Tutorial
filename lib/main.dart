import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/home.dart';
import 'package:getxtutorial/nextScreen.dart';
import 'package:getxtutorial/unknownPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: "/home", page: () => Home()),
        GetPage(
          name: "/nextScreen/:someValue",
          page: () => NextScreen(),
          transition: Transition.downToUp,
        ),
      ],
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownPage()),
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
                onPressed: () {
                  // Get.toNamed("/home");
                  // Get.offNamed("/home");
                  // Get.offAllNamed("/home");

                  Get.toNamed(
                    "/home?channel=Ripples Code&content=Flutter GetX",
                  );
                },
                child: Text("Go to Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

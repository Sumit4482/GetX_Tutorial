import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is Home Screen"),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Next Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.back();
                Get.back(result: "THis is home sscreen data");
              },
              child: Text("Back to Main"),
            ),
            // Text(
            //   "${Get.arguments}",

            // )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Show Dialog"),
                onPressed: () {
                  //Get a default Dialog Box
                  // Get.defaultDialog();

                  Get.defaultDialog(
                    title: "Dialog Title",
                    titleStyle: const TextStyle(fontSize: 20),
                    middleText: "This is Middle Text",
                    middleTextStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.amber,
                    radius: 20,

                    //To customize the middle Text
                    content: Row(
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Expanded(
                            child: Text("Data Loading"),
                          ),
                        ),
                      ],
                    ),
                    textCancel: "Cancel",
                    cancelTextColor: Colors.green,
                    textConfirm: "Confirm it Bitch",
                    confirmTextColor: Colors.white,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.pink,
                    cancel: const Text(
                      "Cancel Override",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    confirm: const Text(
                      "Confirm Override",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Action 1"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Action 2"),
                      ),
                    ],
                    barrierDismissible: true,
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

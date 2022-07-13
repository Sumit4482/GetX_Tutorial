import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bottom Sheet",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Bottom Sheet"),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            title: Text("Light Theme"),
                            leading: Icon(Icons.wb_sunny_outlined),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            title: Text("Dark Theme"),
                            leading: Icon(Icons.wb_sunny),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                    barrierColor: Colors.greenAccent.shade200,
                    backgroundColor: Colors.purpleAccent,
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                    ),
                    enableDrag: false,
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

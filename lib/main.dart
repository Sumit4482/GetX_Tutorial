import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'student.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
//  var student = Student();

// for making entire class observable
  final student = Student(name: "Sumit ", age: 21).obs;

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
                    "Name is ${student.value.name}",
                    style: TextStyle(fontSize: 25),
                  )),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  student.update((val) {
                    //Indvidual Reactive

                    //Enitre Class is Reactive
                    student.value.name =
                        student.value.name.toString().toUpperCase();
                  });
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

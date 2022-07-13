import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Show Snackbar"),
                onPressed: () {
                  Get.snackbar(
                    "Snackbar Title", "This will be snackbar message",
                    //To specify the position of Snackbar, By default it is TOP
                    snackPosition: SnackPosition.TOP,

                    //To give title and message, it will override the above values.
                    // titleText: const Text("Another Title"),
                    // messageText: const Text(
                    //   "This is another message text",
                    //   style: TextStyle(
                    //     color: Colors.deepOrange,
                    //   ),
                    // ),

                    // TO specify the colors of text it cannot override, if the above properties if specified.
                    colorText: Colors.lightGreen,

                    // TO specify the background color.
                    backgroundColor: Colors.black,

                    // BorderRadius
                    borderRadius: 50,

                    //Margin
                    margin: const EdgeInsets.all(10),

                    //Max Width
                    maxWidth: 500,

                    //Animation
                    animationDuration: const Duration(milliseconds: 300),

                    //TO specify background gradient ,it will override background color.
                    // backgroundGradient: const LinearGradient(
                    //   colors: [
                    //     Colors.red,
                    //     Colors.blue,
                    //     Colors.green,
                    //   ],
                    // ),

                    //border color,without border width this will not work
                    //borderColor: Colors.purple,

                    //border Width
                    // borderWidth: 4,
                    // boxShadows: const [
                    //   BoxShadow(
                    //     color: Colors.yellow,
                    //     offset: Offset(30, 50),
                    //     spreadRadius: 20,
                    //     blurRadius: 8,
                    //   ),
                    // ],

                    // TO dissmiss
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.bounceInOut,

                    // this duration specifies how long the snackbar present on screen
//                      duration: Duration(microseconds: 8000),

                    //Icon
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),

                    //should icon pulse will stop the animation of icon
                    shouldIconPulse: false,

                    //A bar will appear at the left end
                    leftBarIndicatorColor: Colors.white,

                    // A button will appear on Snackbar
                    mainButton: TextButton(
                      onPressed: () {},
                      child: const Text("SEND"),
                    ),

                    //ON Tapped snackbar actions
                    onTap: (val) {
                      print("Snackbar Clicked !!");
                    },
                    // The background screen will gets blur when snackbar is arrived.
                    overlayBlur: 0.5,
                    // overlayColor: Colors.red,

                    padding: const EdgeInsets.all(4),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.cyan,
                    reverseAnimationCurve: Curves.bounceIn,
                    snackbarStatus: (val) {
                      print(val);
                    },

                    // userInputForm: Form(
                    //   child: Row(
                    //     children: const [
                    //       Text("HELELO"),
                    //       Expanded(
                    //         child: TextField(),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    //
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

import 'package:flutter/material.dart';
import 'package:flutter_ex/src/pages/home.dart';
import 'package:get/get.dart';

class NextPage extends StatelessWidget {
  NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Next Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            // Text("${Get.arguments}"),
            // Text("${Get.argument(s.toString()}"),
            //   Text(
            //       // "${(Get.arguments as User).name} : ${(Get.arguments as User).age}"),
            //   ElevatedButton(
            //     onPressed: () {
            //       Get.back();
            //     },
            //     child: Text('뒤로 이동'),
            //   ),
            // ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ex/src/pages/home.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Named Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('으니'),
                onPressed: () {
                  Get.back();
                },
              ),
              //   child: Text(
              //       // '${(Get.arguments as User).name} : ${(Get.arguments as User).age} '),
              // ),
              // ElevatedButton(
              //     // onPressed: () => Get.offAllNamed("/"), child: Text('홈으로 이동'))
            ],
          ),
        ));
  }
}

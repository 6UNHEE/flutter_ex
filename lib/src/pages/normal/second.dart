import 'package:flutter/material.dart';
import 'package:flutter_ex/src/pages/home.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('뒤로 이동'),
              ),
              ElevatedButton(
                  onPressed: () => Get.offAll(Home()), child: Text('홈으로 이동'))
            ],
          ),
        ));
  }
}

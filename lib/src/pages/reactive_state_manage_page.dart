import 'package:flutter/material.dart';
import 'package:flutter_ex/src/controller/count_controller_reactive.dart';
import 'package:get/get.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWIthReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GetX",
              style: TextStyle(fontSize: 30),
            ),
            Obx(
              () => Text(
                "${Get.find<CountControllerWIthReactive>().count.value}",
                style: TextStyle(fontSize: 50),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWIthReactive>().increase();
              },
              child: Text(
                "+",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWIthReactive>().putNumber(5);
              },
              child: Text(
                "5로 변경",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

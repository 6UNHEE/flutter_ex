import 'package:flutter/material.dart';
import 'package:flutter_ex/src/controller/dependency_controller.dart';
import 'package:get/get.dart';

class GetPut extends StatelessWidget {
  const GetPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
          child: Text("테스트"),
          onPressed: () {
            Get.find<DependecyController>().increas();
          }),
    );
  }
}

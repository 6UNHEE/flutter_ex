import 'package:flutter/material.dart';
import 'package:flutter_ex/src/controller/dependency_controller.dart';
import 'package:get/get.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          Get.find<DependecyController>().increas();
        },
        child: Text('테스트'),
      ),
    );
  }
}

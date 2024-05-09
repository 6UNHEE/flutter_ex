import 'package:flutter/material.dart';
import 'package:flutter_ex/src/controller/dependency_controller.dart';
import 'package:get/get.dart';

import 'get_lazyput..dart';
import 'get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.put(DependecyController());
                }));
              },
              child: Text("GetPut"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(GetLazyPut(), binding: BindingsBuilder(() {
                  Get.lazyPut<DependecyController>(() => DependecyController());
                }));
              },
              child: Text("Get.lazyPut"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.putAsync<DependecyController>(
                      () async => DependecyController());
                }));
              },
              child: Text("Get.putAsync"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.create<DependecyController>(() => DependecyController());
                }));
              },
              child: Text("Get.create"),
            ),
          ],
        ),
      ),
    );
  }
}

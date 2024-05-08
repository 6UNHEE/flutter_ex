import 'package:flutter/material.dart';
import 'package:flutter_ex/src/pages/normal/first.dart';
import 'package:flutter_ex/src/pages/simple_state_manage_page.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('라우트 관리 홈'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(FirstPage());
                },
                child: Text('일반적인 라우트'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/first");
                },
                child: Text('Named 라우트'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.toNamed("/next", arguments: "으니");
                  // Get.toNamed("/next", arguments: 3);
                  // Get.toNamed("/next", arguments: User(
                  //   name: "으니", age: 25,
                  // ));
                  //Get.to(FirstPage(), arguments: "개남");
                },
                child: Text('Arguments 전달'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(SimpleStateManagePage()),
                child: Text('단순상태관리'),
              ),
            ],
          ),
        ));
  }
}

// class User {
//   String? name;
//   int? age;
//   User({this.name, this.age})
// }

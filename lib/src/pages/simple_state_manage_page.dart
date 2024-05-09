import 'package:flutter/material.dart';
import 'state/with_getx.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Get.put(CountControllerWithGetx());
    return Scaffold(
      appBar: AppBar(
        title: Text('단순상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: WithGetX(),
            ),
          ],
        ),
      ),
    );
  }
}

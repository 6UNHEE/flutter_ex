import 'package:flutter_ex/src/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class BindingPageBingding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountControllerWithGetx());
  }
}

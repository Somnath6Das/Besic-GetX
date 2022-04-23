import 'package:get/get.dart';
import 'package:getx_besic/controller/controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MyController());
  }
}

import 'package:get/get.dart';

class MyController extends GetxController {
  String getString() {
    return "helloworldon9";
  }

  var count = 0.obs;
  increment() {
    count++;
  }
}

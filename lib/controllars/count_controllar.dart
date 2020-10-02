import 'package:get/get.dart';

class CountControllar extends GetxController {
  int count = 0;
  void increment() {
    count++;
    update();
  }
}

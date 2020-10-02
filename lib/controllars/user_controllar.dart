import 'package:get/get.dart';
import 'package:getx_demo_2/model/user.dart';

class UserControllar extends GetxController {
  final user = User().obs;
  updateUser(int count) {
    user.update((value) {
      value.name = "Tadas";
      value.count = count;
    });
  }
}

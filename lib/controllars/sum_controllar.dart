import 'package:get/get.dart';

class SumControllar extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;
  increment() => count1.value++;
  increment2() => count2.value++;
  get sum => count1.value + count2.value;

  @override
  void onInit() {
    ever(count1, (_) => print("Count 1 has been changed"));
    once(count1, (_) => print("First time Count 1 is changed"));
    debounce(
        count1,
        (_) => print(
              "Count 1 is hasen't been changed",
            ),
        time: Duration(seconds: 1));
    interval(
        count1,
        (_) => print(
              "every 1 second Count 1 is hasen't been changed",
            ),
        time: Duration(seconds: 1));
  }
}

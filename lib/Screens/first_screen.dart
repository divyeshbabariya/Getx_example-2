import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_2/Screens/second_screen.dart';
import 'package:getx_demo_2/controllars/count_controllar.dart';
import 'package:getx_demo_2/controllars/user_controllar.dart';

class FirstScreen extends StatelessWidget {
  final CountControllar countControllar = Get.put(CountControllar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx | State management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountControllar>(
              init: CountControllar(),
              builder: (_) {
                return Text("currant count value ${_.count}");
              },
            ),
            SizedBox(
              height: 40,
            ),
            GetX<UserControllar>(
              init: UserControllar(),
              builder: (_) {
                return Text("Name ${_.user.value.name}");
              },
            ),
            Obx(() {
              return Text(
                  "stored count ${Get.find<UserControllar>().user.value.count}");
            }),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("Upadate name & stored count"),
              onPressed: () {
                Get.find<UserControllar>()
                    .updateUser(Get.find<CountControllar>().count);
              },
            ),
            SizedBox(height: 100),
            RaisedButton(
                child: Text("Next Page"),
                onPressed: () {
                  Get.to(SecondScreen(), transition: Transition.cupertino);
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.find<CountControllar>().increment();
          }),
    );
  }
}

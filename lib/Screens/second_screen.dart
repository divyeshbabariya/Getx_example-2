import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_2/controllars/sum_controllar.dart';

class SecondScreen extends StatelessWidget {
  final SumControllar sumController = Get.put(SumControllar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scecond"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SumControllar>(
              builder: (_) {
                return Text(
                  "Count #1:    ${_.count1.value}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            Text("                     +"),
            GetX<SumControllar>(
              builder: (_) {
                return Text(
                  "Count #1:    ${_.count2.value}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            Text("                      ="),
            GetX<SumControllar>(
              builder: (_) {
                return Text(
                  "Sum is:        ${_.sum}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
                child: Text("Increment counter #1"),
                onPressed: () {
                  sumController.increment();
                }),
            RaisedButton(
                child: Text("Increment counter #2"),
                onPressed: () {
                  sumController.increment2();
                }),
          ],
        ),
      ),
    );
  }
}

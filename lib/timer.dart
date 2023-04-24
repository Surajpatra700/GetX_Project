import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/counter_controller.dart';

class TimerTest extends StatefulWidget {
  const TimerTest({super.key});

  @override
  State<TimerTest> createState() => _TimerTestState();
}

class _TimerTestState extends State<TimerTest> {
  final CounterController controller = Get.put(CounterController());
  // int x = 0;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     x++;
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      body: Center(
        child: Obx(() {
          // Obx is a reactive widget func. of GetX that helps to listen & display the change in UI
          return Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            controller.incrementCounter();
          }),
    );
  }
}

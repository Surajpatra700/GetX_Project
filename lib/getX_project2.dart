import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/example_two.dart';

class GetXAdjust extends StatefulWidget {
  const GetXAdjust({super.key});

  @override
  State<GetXAdjust> createState() => _GetXAdjustState();
}

class _GetXAdjustState extends State<GetXAdjust> {
  //var opacity = 0.4;
  final ExampleTwo exampleTwo = Get.put(ExampleTwo());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Opacity Adjust"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Container(
                height: 200,
                width: 200,
                color: Colors.blue.withOpacity(exampleTwo.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                  value: exampleTwo.opacity.value,
                  onChanged: (value) {
                    exampleTwo.sliderChange(value);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

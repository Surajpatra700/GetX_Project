import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectThree extends StatefulWidget {
  const ProjectThree({super.key});

  @override
  State<ProjectThree> createState() => _ProjectThreeState();
}

class _ProjectThreeState extends State<ProjectThree> {
  //bool notifications = false;
  final ProjectThreeGetX three = Get.put(ProjectThreeGetX());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notifications"),
              Obx(() => Switch(
                  value: three.notifications.value,
                  onChanged: (value) {
                    three.notifications.value = value;
                    // setState(() {});
                  }),),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectThreeGetX extends GetxController {
  RxBool notifications = false.obs;

  changeSwitch(bool value) {
    notifications.value = value;
  }
}

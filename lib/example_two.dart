import 'package:get/get.dart';

class ExampleTwo extends GetxController {
  RxDouble opacity = (0.4).obs;

  sliderChange(double value) {
    opacity.value = value;
  }
}

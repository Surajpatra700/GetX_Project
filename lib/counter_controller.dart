import 'package:get/get.dart';

class CounterController extends GetxController {
  // GetxController has it's own data types so instead of int, float we use RxInt, RxFloat...

  RxInt counter = 1
      .obs; // obs refers to observable that means this can be controlled & modified by GetX
    // .obs is used so that we can observe the change.

  incrementCounter() {
    counter.value++;
    print(counter.value);
  }
}

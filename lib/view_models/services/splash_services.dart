import 'dart:async';

import 'package:get/get.dart';

class SplashServices {
  void isLogin() {
    Timer(Duration(seconds: 3), () => Get.toNamed("/login_view"));
  }
}

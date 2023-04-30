import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_project/resources/colors/app_color.dart';

class Utils {

  // Function for shifting scope from one place to another using keyboard
  static void fieldFocusScope(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/data/data_exception.dart';
import 'package:getx_project/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("email_hint".tr),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Utils.toastMessage("hello");
      }),
    );
  }
}

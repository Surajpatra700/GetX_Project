import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/data/data_exception.dart';
import 'package:getx_project/resources/colors/app_color.dart';
import 'package:getx_project/utils/utils.dart';
import 'package:getx_project/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("email_hint".tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_off,
              color: AppColor.blackColor,
            ),
            Text("internet_exception".tr),
            SizedBox(
              height: 50,
            ),
            Text("splash_page".tr),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Utils.toastMessage("hello");
      }),
    );
  }
}

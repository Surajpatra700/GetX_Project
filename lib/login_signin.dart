import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Login_SignUp extends StatefulWidget {
  const Login_SignUp({super.key});

  @override
  State<Login_SignUp> createState() => _Login_SignUpState();
}

class _Login_SignUpState extends State<Login_SignUp> {
  LoginController login = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextFormField(
              controller: login.emailController.value,
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            TextFormField(
              controller: login.passwordController.value,
              decoration: InputDecoration(
                hintText: "passeword",
              ),
            ),
            Obx(() => ElevatedButton(
                onPressed: () {
                  login.loadApi();
                },
                child: login.loading.value
                    ? CircularProgressIndicator()
                    : Text("submit"))),
          ],
        ),
      ),
    );
  }
}

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void loadApi() async {
    try {
      final response =
          await post(Uri.parse("https://reqres.in/api/login"), body: {
        "email": emailController.value.text,
        "password": passwordController.value.text,
      });

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        Get.snackbar("Login Successful", "Congralutations",
            snackPosition: SnackPosition.BOTTOM);
        loading.value = true;
      } else {
        Get.snackbar("Login Failed", data["error"],
            snackPosition: SnackPosition.BOTTOM);
        loading.value = false;
      }
    } catch (e) {
      Get.snackbar("Exception", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}

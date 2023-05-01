import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/resources/components/round_button.dart';
import 'package:getx_project/utils/utils.dart';
import 'package:getx_project/view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: loginVM.emailController.value,
                      focusNode: loginVM.emailFocusNode.value,
                      decoration: InputDecoration(
                        hintText: "hint_email".tr,
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          Utils.snackBar("email", "Please enter your email");
                        }
                      },
                      onFieldSubmitted: (value) {
                        Utils.fieldFocusScope(
                            context,
                            loginVM.emailFocusNode.value,
                            loginVM.passwordFocusNode.value);
                      },
                    ),
                    TextFormField(
                      controller: loginVM.passwordController.value,
                      focusNode: loginVM.passwordFocusNode.value,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "hint_password".tr,
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          Utils.snackBar(
                              "password", "Please enter your password");
                        }
                      },
                      onFieldSubmitted: (value) {
                        //Utils.fieldFocusScope(context, loginVM.emailFocusNode.value, loginVM.passwordFocusNode.value);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Obx(
                () => RoundButton(
                    title: "submit",
                    loading: loginVM.loading.value,
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        loginVM.loginApi();
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

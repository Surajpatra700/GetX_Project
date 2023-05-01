// ignore_for_file: prefer_const_constructors, unused_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:getx_project/resources/colors/app_color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final double width, height;
  final VoidCallback onPress;
  final bool loading;
  final Color textColor, buttonColor;
  const RoundButton({super.key,required this.title,required this.onPress,this.height = 50, this.width =80, this.loading = false,this.textColor = AppColor.blackColor,this.buttonColor = AppColor.blueColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: buttonColor,
        ),
        child: loading ? Center(child: CircularProgressIndicator(),): Center(child: Text("Submit")),
      ),
    );
  }
}

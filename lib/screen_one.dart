import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  final String name;
  const ScreenOne({super.key, required this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height*1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One "),
      ),
      body: Center(
        child: Container(
          // *************** RESPONSIVENESS USING MEDIA QUERY ***************
          
          //height: 200,
          //height: h*0.3,
          height: Get.height*0.28,
          color: Colors.blue,
        ),
      ),
    );
  }
}

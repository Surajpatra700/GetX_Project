import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  final String name;
  const ScreenOne({super.key, required this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One "),
      ),
    );
  }
}

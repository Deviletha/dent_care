import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Lottie.asset("assets/lottie3.json", height: 300, repeat: true),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PrivacyInfoPage extends StatefulWidget {
  const PrivacyInfoPage({super.key});

  @override
  State<PrivacyInfoPage> createState() => _PrivacyInfoPageState();
}

class _PrivacyInfoPageState extends State<PrivacyInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Info Page"),
      ),
      body: Center(
        child:  Lottie.asset("assets/privacy_lottie.json",
            height: 300, repeat: true),
      ),
    );
  }
}

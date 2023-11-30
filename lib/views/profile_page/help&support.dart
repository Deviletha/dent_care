import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help and Support"),
      ),
      body: Center(
        child:  Lottie.asset("assets/help_lottie.json",
            height: 300, repeat: true),
      ),
    );
  }
}

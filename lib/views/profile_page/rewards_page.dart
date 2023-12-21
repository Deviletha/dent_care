import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({super.key});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Rewards"),
      ),
      body: Center(
        child: Lottie.asset("assets/lottie4.json", height: 200, repeat: true),
      ),
    );
  }
}

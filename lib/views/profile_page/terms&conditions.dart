import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms and Conditions"),
      ),
      body: Center(
        child:
            Lottie.asset("assets/terms_lottie.json", height: 300, repeat: true),
      ),
    );
  }
}

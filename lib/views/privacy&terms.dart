import 'package:flutter/material.dart';

class PrivacyAndTermsPage extends StatefulWidget {
  const PrivacyAndTermsPage({super.key});

  @override
  State<PrivacyAndTermsPage> createState() => _PrivacyAndTermsPageState();
}

class _PrivacyAndTermsPageState extends State<PrivacyAndTermsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy & Terms"),
      ),
    );
  }
}

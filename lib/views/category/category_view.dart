import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category Heading"),
      ),
      body: Center(
        child:  Lottie.asset("assets/lottie2.json",
            height: 300, repeat: true),
      ),
    );
  }
}

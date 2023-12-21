import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
      body: Center(
        child: Lottie.asset("assets/lottie.json", height: 300, repeat: true),
      ),
    );
  }
}

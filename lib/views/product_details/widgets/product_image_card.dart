import 'package:flutter/material.dart';

class ProductImageTile extends StatelessWidget {
  final String imagePath;

  const ProductImageTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.zero,
          image: DecorationImage(
              image: AssetImage(imagePath), fit: BoxFit.cover)),
    );
  }
}

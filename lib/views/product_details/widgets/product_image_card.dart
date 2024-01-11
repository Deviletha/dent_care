import 'package:flutter/material.dart';

class ProductImageTile extends StatelessWidget {
  final String imagePath;

  const ProductImageTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
              image: AssetImage(imagePath), fit: BoxFit.cover)),
    );
  }
}

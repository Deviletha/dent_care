import 'package:danthal/views/featured_products/widgets/featured_card.dart';
import 'package:flutter/material.dart';

class FeaturedProducts extends StatefulWidget {
  const FeaturedProducts({super.key});

  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {

  List<String> images1 = [
    "assets/pr11.png",
    "assets/pr22.png",
    "assets/pr33.png",
    "assets/pr44.png",
    "assets/products.jpeg",
    "assets/pr11.png",
    "assets/pr22.png",
    "assets/pr33.png",
    "assets/pr44.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Featured Products"),
        ),
        body: ListView.builder(
          itemCount: images1.length,
          itemBuilder: (context, index) => getTopSelling(index),
        ));
  }

  Widget getTopSelling(int index1) {
    return FeaturedProductCard(
      itemName: "Item Name",
      description: "Demo description for top selling products",
      price: "200",
      mrp: "250",
      discount: "20% Discount",
      imagePath: images1[index1],
      onTap: () {},
      onPressed: () {},
    );
  }
}

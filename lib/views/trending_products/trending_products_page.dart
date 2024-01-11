import 'package:danthal/views/top_selling/widgets/all_product_card.dart';
import 'package:flutter/material.dart';

import '../featured_products/widgets/featured_card.dart';

class TrendingProducts extends StatefulWidget {
  const TrendingProducts({super.key});

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {

  List<String> images1 = [
    "assets/mouthwash.jpg",
    "assets/bond_370x287_bf4.jpg",
    "assets/products.jpeg",
    "assets/mouthwash.jpg",
    "assets/bond_370x287_bf4.jpg",
    "assets/products.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Trending Products"),
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

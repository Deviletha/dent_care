import 'package:danthal/views/featured_products/widgets/featured_card.dart';
import 'package:flutter/material.dart';

class FeaturedProducts extends StatefulWidget {
  const FeaturedProducts({super.key});

  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {

  List<String> images1 = [
    "assets/dentall product.jpeg",
    "assets/pr1.png",
    "assets/pr2.png",
    "assets/pr3.png",
    "assets/pr4.png",
    "assets/bond_370x287_bf4.jpg",
    "assets/products.jpeg",
    "assets/dentall product.jpeg",
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

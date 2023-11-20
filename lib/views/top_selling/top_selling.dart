import 'package:danthal/views/top_selling/widgets/all_product_card.dart';
import 'package:flutter/material.dart';

class TopSelling extends StatefulWidget {
  const TopSelling({super.key});

  @override
  State<TopSelling> createState() => _TopSellingState();
}

class _TopSellingState extends State<TopSelling> {
  List<String> images1 = [
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/images.png",
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/images.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Top Selling Products"),
        ),
        body: ListView.builder(
          itemCount: images1.length,
          itemBuilder: (context, index) => getTopSelling(index),
        ));
  }

  Widget getTopSelling(int index1) {
    return
      AllProductCard(itemName: "Item Name",
          description: "Description", price: "₹ 200",
          mrp: "MRP: 250", discount: "20% Discount", imagePath: images1[index1],
      onTap: (){},
      onPressed: (){},);
  }
}

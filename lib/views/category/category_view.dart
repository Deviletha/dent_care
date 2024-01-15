import 'package:danthal/views/category/widgets/cat_card.dart';
import 'package:flutter/material.dart';

import '../homepage/widgets/product_card.dart';
import '../product_details/product_details.dart';

class CategoryView extends StatefulWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  List<String> images = [
    "assets/pr11.png",
    "assets/pr22.png",
    "assets/pr33.png",
    "assets/pr44.png",
    "assets/dentInstrument1.png",
    "assets/dentInstrument2.png",
    "assets/dentInstrument3.png",
    "assets/dentInstrument4.png"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body:
      GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .70,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) => getCategory(index),
      ),
      // Center(
      //   child: Lottie.asset("assets/lottie2.json", height: 300, repeat: true),
      // ),
    );
  }

  Widget getCategory(int index) {
    return ProductTile(
      itemName: "PRODUCT NAME",
      imagePath: images[index],
      description: "Dummy Description for product card",
      actualPrice: "₹ 20000 ",
      discount: "20% Off",
      totalPrice: "25000",
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      wishlist: () {},
    );
  }

}

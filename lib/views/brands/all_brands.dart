import 'package:danthal/views/brands/widgets/brand_card.dart';
import 'package:flutter/material.dart';

import 'brand_view.dart';

class AllBrands extends StatefulWidget {
  const AllBrands({super.key});

  @override
  State<AllBrands> createState() => _AllBrandsState();
}

class _AllBrandsState extends State<AllBrands> {
  List<String> topImages = [
    "assets/kerr.jpeg",
    "assets/nsk.png",
    "assets/sybronEndo.jpeg",
    "assets/Tokuyama.jpeg",
    "assets/colgate.png",
    "assets/kerr.jpeg",
    "assets/nsk.png",
    "assets/sybronEndo.jpeg",
    "assets/Tokuyama.jpeg",
    "assets/colgate.png",
    "assets/kerr.jpeg",
    "assets/nsk.png",
    "assets/sybronEndo.jpeg",
    "assets/Tokuyama.jpeg",
    "assets/colgate.png",
    "assets/kerr.jpeg",
    "assets/nsk.png",
    "assets/sybronEndo.jpeg",
    "assets/Tokuyama.jpeg",
    "assets/colgate.png"
  ];
  List<String> topNames = [
    "Kerr", "NSK", "SybroEndo", "Tokuyama", "Colgate",
    "Kerr", "NSK", "SybroEndo", "Tokuyama", "Colgate",
    "Kerr", "NSK", "SybroEndo", "Tokuyama", "Colgate",
    "Kerr", "NSK", "SybroEndo", "Tokuyama", "Colgate"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brands"),
      ),
      body: GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: .70,
        ),
        itemCount: 20,
        itemBuilder: (context, index) => getTopBrand(index),
      ),
    );
  }

  Widget getTopBrand(int index) {
    return
      BrandCard(
        imagePath: topImages[index],
        brandName: topNames[index],
        onTap:  () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BrandView()));
        },
      );
  }
}

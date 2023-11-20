import 'package:flutter/material.dart';
import '../top_selling/widgets/all_product_card.dart';

class AllInstruments extends StatefulWidget {
  const AllInstruments({super.key});

  @override
  State<AllInstruments> createState() => _AllInstrumentsState();
}

class _AllInstrumentsState extends State<AllInstruments> {

  List<String> images = [
    "assets/7-Common-Plastic-Dental-Equipment-1200x900.jpg",
    "assets/dental-tools-1.jpg",
    "assets/dentist-equipment.jpg",
    "assets/treatment-units.jpg",
    "assets/7-Common-Plastic-Dental-Equipment-1200x900.jpg",
    "assets/dental-tools-1.jpg",
    "assets/dentist-equipment.jpg",
    "assets/treatment-units.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Instruments"),
      ),
      body: ListView.builder(
        physics: ScrollPhysics(),

        itemCount:images.length,
        itemBuilder: (context, index) => getTopSelling(index),
      ),
    );
  }

  Widget getTopSelling(int index1) {
    return   AllProductCard(itemName: "Item Name",
      description: "Description", price: "₹ 200",
      mrp: "MRP: 250", discount: "20% Discount", imagePath: images[index1],
      onTap: (){},
      onPressed: (){},);
  }

}

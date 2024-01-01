import 'package:flutter/material.dart';
import '../top_selling/widgets/all_product_card.dart';

class AllInstruments extends StatefulWidget {
  const AllInstruments({super.key});

  @override
  State<AllInstruments> createState() => _AllInstrumentsState();
}

class _AllInstrumentsState extends State<AllInstruments> {

  List<String> images = [
    "assets/dentInstrument1.png",
    "assets/dentInstrument2.png",
    "assets/dentInstrument3.png",
    "assets/dentInstrument4.png",
    "assets/dentInstrument1.png",
    "assets/dentInstrument2.png",
    "assets/dentInstrument3.png",
    "assets/dentInstrument4.png"
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
      description: "Description, Description,  Description", price: "₹ 200",
      mrp: "MRP: 250", discount: "20% Discount", imagePath: images[index1],
      onTap: (){},
      onPressed: (){},);
  }

}

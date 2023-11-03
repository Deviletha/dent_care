import 'package:danthal/views/product_details/widgets/product_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vendor Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailCard(imagePath: "assets/dentall product.jpeg",
                itemName: "Item Name",
                description: "Description",
                actualPrice: "180",
                offerPrice: "160",
                discount: "20",
               onPressed: (){},
              onPressedCart: (){},

            ),
            Divider(
              thickness: 2,
            ),
            Text(
              "Manufacturer's Details",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text("1. ABC Medicals"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Packer's Details",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text("1. ABC Medicals")
          ],
        ),
      ),
    );
  }
}

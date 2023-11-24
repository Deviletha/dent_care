import 'package:danthal/views/product_details/widgets/product_detail_card.dart';
import 'package:flutter/material.dart';

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
        title: Text("Product Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailCard(imagePath: "assets/dentall product.jpeg",
                itemName: "PRODUCT ITEM NAME",
                description: "Dummy Description for product card",
                actualPrice: "180",
                offerPrice: "160",
                discount: "20",
               onPressed: (){},
              onPressedCart: (){},
              onPressedBuyNow: (){},

            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: const [
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
            )
          ],
        ),
      ),
    );
  }
}

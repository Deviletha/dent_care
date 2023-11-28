import 'package:danthal/views/product_details/widgets/product_detail_card.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';

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
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                color: Color(ColorT.redColor),
                height: 60,
                width: MediaQuery.of(context).size.width/2.5,
                child: TextButton(
                    onPressed: (){},
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle( fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold ),
                    ))),
            Container(
                color: Color(ColorT.themeColor),
                height: 60,
                width: MediaQuery.of(context).size.width/2.5,
                child: TextButton(
                    onPressed: (){},
                    child: Text(
                      "BUY NOW",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,fontWeight: FontWeight.bold),
                    ))),
          ],
        ),
      ),
    );
  }
}

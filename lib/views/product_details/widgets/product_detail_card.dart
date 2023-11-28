import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


class ProductDetailCard extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final String description;
  final String actualPrice;
  final String offerPrice;
  final String discount;
  final void Function()? onPressed;
  // final void Function()? onPressedBuyNow;
  // final void Function()? onPressedCart;

  const ProductDetailCard(
      {super.key,
      required this.imagePath,
      required this.itemName,
      required this.description,
      required this.actualPrice,
      required this.offerPrice,
      required this.discount,
      this.onPressed,
      // this.onPressedCart,
      // this.onPressedBuyNow
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            clipBehavior: Clip.antiAlias,
            width: double.infinity,
            height: 250,
            child: Image.asset(
              imagePath,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(description,
                      style: TextStyle(fontSize: 14, color: Colors.grey.shade700)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text("₹ $offerPrice",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.red)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(actualPrice,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            decorationStyle: TextDecorationStyle.solid,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text("$discount% off",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey))
                    ],
                  )
                ],
              ),
              IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Ionicons.heart_outline,
                    size: 30,
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
